//
//  Networking.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation
import UIKit

protocol ApiService {
	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int) async throws -> GitRepoSearchResultModel
	func getRepoDetails(ofRepo repoFullName: String) async throws -> GitRepoDetails
	func fetchProfilePicture(fromUrl url: String) async throws -> UIImage?
}

class GitHubService: ApiService {

	let baseURL = "https://api.github.com"

	enum Endpoints: String {
		case repos = "/search/repositories"
		case repoDetails = "/repos"
	}

	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int) async throws -> GitRepoSearchResultModel {
		guard let percentEncodedQuery = query.addingPercentEncoding(withAllowedCharacters: .letters),
				let url = URL(string: baseURL + Endpoints.repos.rawValue + "?q=\(percentEncodedQuery)&page=\(pageNumber)" ) else {
			throw ServiceErrors.other
		}

		let (data, response) = try await URLSession.shared.data(from: url)
		guard let httpResponse = response as? HTTPURLResponse else {
			throw ServiceErrors.other
		}

		guard httpResponse.statusCode == 200 else {
			if let knownError = ServiceErrors(rawValue: httpResponse.statusCode) {
				throw knownError
			} else {
				throw ServiceErrors.other
			}
		}
		do {
			return try JSONDecoder().decode(GitRepoSearchResultModel.self, from: data)
		} catch {
			throw ServiceErrors.other
		}

	}

	func getRepoDetails(ofRepo repoFullName: String) async throws -> GitRepoDetails {
		guard let url = URL(string: baseURL + Endpoints.repoDetails.rawValue + "/\(repoFullName)") else {
			throw ServiceErrors.other
		}

		let (data, response) = try await URLSession.shared.data(from: url)
		guard let httpResponse = response as? HTTPURLResponse else {
			throw ServiceErrors.other
		}

		guard httpResponse.statusCode == 200 else {
			if let knownError = ServiceErrors(rawValue: httpResponse.statusCode) {
				throw knownError
			} else {
				throw ServiceErrors.other
			}
		}

		do {
			return try JSONDecoder().decode(GitRepoDetails.self, from: data)
		} catch {
			throw ServiceErrors.other
		}
	}

	func fetchProfilePicture(fromUrl url: String) async throws -> UIImage? {
		guard let url = URL(string: url ) else {
			throw ServiceErrors.other
		}
		let (data, response) = try await URLSession.shared.data(from: url)
		guard let httpResponse = response as? HTTPURLResponse else {
			throw ServiceErrors.other
		}
		guard httpResponse.statusCode == 200 else {
			if let knownError = ServiceErrors(rawValue: httpResponse.statusCode) {
				throw knownError
			} else {
				throw ServiceErrors.other
			}
		}
		return UIImage(data: data)
	}
}
