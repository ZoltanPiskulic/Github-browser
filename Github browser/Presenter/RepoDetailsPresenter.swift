//
//  RepoDetailsPresenter.swift
//  Github browser
//
//  Created by Thor on 2023. 10. 01..
//

import UIKit

protocol RepoDetailsView: UIViewController {
	func showProfilePicture(image: UIImage)
	func displayData(ofRepository repoData: GitRepoDetails)
	func showError()
}

class RepoDetailsPresenter {

	var service: ApiService?
	weak var view: RepoDetailsView?

	init(view: RepoDetailsView, service: ApiService) {
		self.view = view
		self.service = service
	}

	@MainActor
	func fetchProfilePicture(fromUrl url: String?) {
		guard let url = url else {
			self.view?.showError()
			return
		}
		Task {
			do {
				if let image = try await self.service?.fetchProfilePicture(fromUrl: url) {
					self.view?.showProfilePicture(image: image)
				} else {
					throw ServiceErrors.other
				}
			} catch {
				self.view?.showError()
			}
		}
	}

	@MainActor
	func fetchRepoDetails(ofRepo repoFullName: String?) {
		guard let fullName = repoFullName else {
			self.view?.showError()
			return
		}
		Task {
			do {
				if let data = try await self.service?.getRepoDetails(ofRepo: fullName) {
					self.view?.displayData(ofRepository: data)
				} else {
					throw ServiceErrors.other
				}
			} catch {
				self.view?.showError()
			}
		}
	}
}
