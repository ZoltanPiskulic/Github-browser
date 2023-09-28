//
//  Networking.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation

protocol Network {
	func searchRepos(withQuery query: String) async throws -> GitRepos
	func getRepoDetails() -> Void
}

class Networking: Network {

	let baseURL = "https://api.github.com"

	enum Endpoint: String {
		case repos = "/search/repositories"
	}

	func searchRepos(withQuery query: String) async throws -> GitRepos {
		guard let url = URL(string: baseURL + Endpoint.repos.rawValue + "?q=\(query)" ) else {
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

	func getRepoDetails() {
		return
	}
}
