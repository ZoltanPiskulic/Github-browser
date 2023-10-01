//
//  SearchResultPresenter.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 30..
//

import UIKit

protocol SearchResultView: UIViewController {
	func addNewResults(results: [RepoSearchResultItem])
	func displayErrorMessage(forError: ServiceErrors)
}

class SearchResultPresenter {

	var searchResults = [RepoSearchResultItem]()
	var pageNumber = 1
	var numberOfItemsPerPage = 30
	var searchQueryString = ""

	var service: ApiService?
	weak var view: SearchResultView?

	init(view: SearchResultView, service: ApiService) {
		self.view = view
		self.service = service
	}

	@MainActor
	func fetchRepos() {
		Task {
			do {
				self.pageNumber+=1
				if let results = try await self.service?.searchRepos(withQuery: searchQueryString, forPageNumber: self.pageNumber).items {
					guard !results.isEmpty else {
						throw ServiceErrors.noResult
					}
					self.searchResults.append(contentsOf: results)
					self.view?.addNewResults(results: results)
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

	func calculateIndexPaths() -> [IndexPath] {
		var indexPathArray = [IndexPath]()
		let currentNumberOfCells = pageNumber * numberOfItemsPerPage
		let targetNumberOfCells = (pageNumber+1) * numberOfItemsPerPage
		for number in currentNumberOfCells...targetNumberOfCells {
			indexPathArray.append(IndexPath(row: number, section: 0))
		}
		return indexPathArray
	}

	func formattedDateString(from string: String) -> String? {
		let dateFormatterGet = DateFormatter()
		dateFormatterGet.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

		let dateFormatterPrint = DateFormatter()
		dateFormatterPrint.dateFormat = "yyyy MMM d, HH:mm"

		if let date = dateFormatterGet.date(from: string) {
			return dateFormatterPrint.string(from: date)
		} else {
			print("There was an error decoding the string")
			return nil
		}
	}
}
