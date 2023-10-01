//
//  GitRepoSearchViewController.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 26..
//

import UIKit

class GitRepoSearchViewController: UIViewController {

	@IBOutlet weak var searchTextField: UITextField!
	@IBOutlet weak var errorLabel: UILabel!

	var presenter: GitRepoSearchPresenter?

	override func viewDidLoad() {
		super.viewDidLoad()
		presenter = GitRepoSearchPresenter(view: self, service: GitHubService())
		configUI()
	}

	@IBAction func searchButtonPressed(_ sender: Any) {
		guard let query = searchTextField.text, !query.isEmpty else {
			displayTextFieldErrorMessage()
			return
		}
		presenter?.fetchRepos(withQuery: query)
		displayLoader()
	}

	func configUI() {
		errorLabel.isHidden = true
		searchTextField.autocapitalizationType = .none
	}

	func fadeOutErrorLabel(duration: TimeInterval = 1.0, delay: TimeInterval = 3.0, completion: @escaping ((Bool)->())) {
		UIView.animate(withDuration: duration, delay: delay, options: UIView.AnimationOptions.curveEaseIn, animations: { [weak self] in
			self?.errorLabel.alpha = 0.0
		}, completion: completion)
	}

	func resetErrorLabel() {
		errorLabel.isHidden = true
		errorLabel.alpha = 1.0
		errorLabel.text = ""
	}
}

// MARK: - Presenter related calls
extension GitRepoSearchViewController: GitSearchView {
	
	func displayResults(results: [RepoSearchResultItem]) {
		self.dismissLoader()
		if let resultsViewController = UIStoryboard.init(name: "SearchResults", bundle: Bundle.main).instantiateViewController(withIdentifier: "SearchResultsViewController") as? SearchResultsViewController {
			resultsViewController.presenter = SearchResultPresenter(view: resultsViewController, service: GitHubService())
			resultsViewController.presenter?.searchResults = results
			resultsViewController.presenter?.searchQueryString = self.searchTextField.text ?? ""
			self.navigationController?.pushViewController(resultsViewController, animated: true)
		} else {
			self.displayErrorMessage(forError: .other)
		}
	}
}

// MARK: - Error handling
extension GitRepoSearchViewController {

	func displayErrorMessage(forError error: ServiceErrors) {
		dismissLoader()
		errorLabel.isHidden = false
		errorLabel.text = createErrorLabel(forCase: error)
		fadeOutErrorLabel(duration: 1.0, delay: 3.0, completion: {_ in
			self.resetErrorLabel()
		})
	}

	func displayTextFieldErrorMessage() {
		dismissLoader()
		errorLabel.isHidden = false
		errorLabel.text = "Please write something into the text field"
		fadeOutErrorLabel(duration: 1.0, delay: 3.0, completion: {_ in
			self.resetErrorLabel()
		})
	}
}

