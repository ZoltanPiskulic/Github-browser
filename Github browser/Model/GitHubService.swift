//
//  Networking.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation

protocol ApiService {
	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int) async throws -> GitRepoSearchResultModel
	func getRepoDetails(ofOwner ownerName: String, ofRepo repoName: String) async throws -> GitRepoDetails
}

class GitHubService: ApiService {

	let baseURL = "https://api.github.com"

	enum Endpoints: String {
		case repos = "/search/repositories"
		case repoDetails = "/repos"
	}

	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int) async throws -> GitRepoSearchResultModel {
		guard let percentEncodedQuery = query.addingPercentEncoding(withAllowedCharacters: .whitespaces),
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
		return try JSONDecoder().decode(GitRepoSearchResultModel.self, from: data)
	}

	func getRepoDetails(ofOwner ownerName: String, ofRepo repoName: String) async throws -> GitRepoDetails {
		guard let url = URL(string: baseURL + Endpoints.repos.rawValue + "/\(ownerName)/\(repoName)" ) else {
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
		return try JSONDecoder().decode(GitRepoDetails.self, from: data)
	}
}
