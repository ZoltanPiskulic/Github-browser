//
//  GitRepoSearchPresenter.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import UIKit

protocol GitSearchView: UIViewController {
	func displayResults(results: [RepoSearchResultItem])
	func displayErrorMessage(forError: ServiceErrors)
}

class GitRepoSearchPresenter {

	var service: ApiService?
	weak var view: GitSearchView?

	init(view: GitSearchView, service: ApiService) {
		self.view = view
		self.service = service
	}

	@MainActor
	func fetchRepos(withQuery query: String) {
		Task {
			do {
				if let results = try await self.service?.searchRepos(withQuery: query, forPageNumber: 1).items {
					guard !results.isEmpty else {
						throw ServiceErrors.noResult
					}
					self.view?.displayResults(results: results)
				} else {
					throw ServiceErrors.other
				}
			} catch {
				self.handleError(error: error)
			}
		}
	}

	func handleError(error: Error) {
		guard let unwrappedError = error as? ServiceErrors else {
			self.view?.displayErrorMessage(forError: .other)
			return
		}
		self.view?.displayErrorMessage(forError: unwrappedError)
	}
}
