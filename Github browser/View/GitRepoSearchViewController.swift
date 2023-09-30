//
//  GitRepoSearchViewController.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 26..
//

import UIKit

class GitRepoSearchViewController: UIViewController, GitSearchView {

	@IBOutlet weak var searchTextFieldOutlet: UITextField!
	@IBOutlet weak var errorLabelOutlet: UILabel!

	var presenter: GitRepoSearchPresenter?
	var service : ApiService?

	override func viewDidLoad() {
		super.viewDidLoad()
		presenter = GitRepoSearchPresenter(view: self, service: GitHubService())
		configUI()
	}

	@IBAction func searchButtonPressed(_ sender: Any) {
		presenter?.fetchRepos(withQuery: searchTextFieldOutlet.text ?? "")
	}

	func configUI() {
		errorLabelOutlet.isHidden = true
	}

	func fadeOutErrorLabel(duration: TimeInterval = 1.0, delay: TimeInterval = 3.0) {
		UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: {
			self.errorLabelOutlet.alpha = 0.0
		})
	}

	func resetErrorLabel() {
		errorLabelOutlet.isHidden = true
		errorLabelOutlet.alpha = 1.0
		errorLabelOutlet.text = ""
	}

	func displayResults(results: [RepoSearchResultItem]) {
		return
	}
}

// MARK: - Error handling
extension GitRepoSearchViewController {

	func displayTooManyRequestsError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "Server is busy, please try again later."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}

	func displayServiceUnavailableError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "Server unavailable, please try again later."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}

	func displayFobiddenError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "This search is forbidden, please try something else."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}

	func displayNotFoundError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "Can't find repository with these parameters."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}

	func displayNoResultsError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "Can't find repository with these parameters."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}

	func displayGenericError() {
		errorLabelOutlet.isHidden = false
		errorLabelOutlet.text = "An error occured, please try again."
		fadeOutErrorLabel(duration: 1.0, delay: 5.0)
		resetErrorLabel()
	}
}

