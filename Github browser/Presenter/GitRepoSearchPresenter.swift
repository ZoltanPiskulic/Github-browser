//
//  GitRepoSearchPresenter.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import UIKit

protocol GitSearchView: UIViewController {
	func displayResults(results: [RepoSearchResultItem])
	func displayTooManyRequestsError()
	func displayServiceUnavailableError()
	func displayFobiddenError()
	func displayNotFoundError()
	func displayNoResultsError()
	func displayGenericError()
}

class GitRepoSearchPresenter {

	var service: ApiService?
	weak var view: GitSearchView?

	init(view: GitSearchView, service: ApiService) {
		self.view = view
		self.service = service
	}

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
			view?.displayGenericError()
			return
		}
		switch unwrappedError {
			case ServiceErrors.tooManyRequests:
				view?.displayTooManyRequestsError()

			case ServiceErrors.serviceUnavailable:
				view?.displayServiceUnavailableError()

			case ServiceErrors.forbidden:
				view?.displayServiceUnavailableError()

			case ServiceErrors.notFound:
				view?.displayNotFoundError()

			case ServiceErrors.noResult:
				view?.displayNoResultsError()

			case ServiceErrors.other:
				view?.displayGenericError()
		}
	}
}
