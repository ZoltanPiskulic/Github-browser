//
//  Networking.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation

protocol Network {
	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int) async throws -> GitRepos
	func getRepoDetails(ofOwner ownerName: String, ofRepo repoName: String) async throws -> GitRepoDetails
}

class Networking: Network {

	let baseURL = "https://api.github.com"

	enum Endpoints: String {
		case repos = "/search/repositories"
		case repoDetails = "/repos"
	}

	func searchRepos(withQuery query: String, forPageNumber pageNumber: Int = 1) async throws -> GitRepos {
		guard let url = URL(string: baseURL + Endpoints.repos.rawValue + "?q=\(query)&page=\(pageNumber)" ) else {
			throw HTTPErrors.other
		}

		let (data, response) = try await URLSession.shared.data(from: url)
		guard let httpResponse = response as? HTTPURLResponse else {
			throw HTTPErrors.other
		}

		guard httpResponse.statusCode == 200 else {
			if let knownError = HTTPErrors(rawValue: httpResponse.statusCode) {
				throw knownError
			} else {
				throw HTTPErrors.other
			}
		}
		return try JSONDecoder().decode(GitRepos.self, from: data)
	}

	func getRepoDetails(ofOwner ownerName: String, ofRepo repoName: String) async throws -> GitRepoDetails {
		guard let url = URL(string: baseURL + Endpoints.repos.rawValue + "/\(ownerName)/\(repoName)" ) else {
			throw HTTPErrors.other
		}

		let (data, response) = try await URLSession.shared.data(from: url)
		guard let httpResponse = response as? HTTPURLResponse else {
			throw HTTPErrors.other
		}

		guard httpResponse.statusCode == 200 else {
			if let knownError = HTTPErrors(rawValue: httpResponse.statusCode) {
				throw knownError
			} else {
				throw HTTPErrors.other
			}
		}
		return try JSONDecoder().decode(GitRepoDetails.self, from: data)
	}
}
