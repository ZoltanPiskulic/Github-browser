//
//  SearchResultsViewController.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import UIKit

class SearchResultsViewController: UIViewController {

	@IBOutlet weak var searchResultsTableView: UITableView!

	var presenter: SearchResultPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
		self.searchResultsTableView.delegate = self
		self.searchResultsTableView.dataSource = self
    }
}

extension SearchResultsViewController: SearchResultView {
	
	func addNewResults(results: [RepoSearchResultItem]) {
		self.searchResultsTableView.tableFooterView?.isHidden = true
		self.searchResultsTableView.reloadData()
	}
}

// MARK: - TableView related code
extension SearchResultsViewController: UITableViewDelegate, UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let results = presenter?.searchResults.count else {
			return 0
		}
		return results
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let nib = UINib(nibName: "SearchResultTableViewCell", bundle: nil)
		tableView.register(nib, forCellReuseIdentifier: SearchResultTableViewCell.identifier)
		let cell = tableView.dequeueReusableCell(withIdentifier: SearchResultTableViewCell.identifier, for: indexPath) as! SearchResultTableViewCell
		guard let cellData = presenter?.searchResults[indexPath.row] else {
			return UITableViewCell()
		}
		cell.repoNameLabel.text = cellData.fullName
		cell.repoDescriptionLabel.text = cellData.description ?? "No description given"
		cell.dateModifiedLabel.text = presenter?.formattedDateString(from: cellData.updatedAt) ?? "No data"
		cell.stargazersCountLabel.text = "\(cellData.stargazersCount)"
		return cell
	}

	func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		let lastSectionIndex = tableView.numberOfSections - 1
		let lastRowIndex = tableView.numberOfRows(inSection: lastSectionIndex) - 1
		if indexPath.section ==  lastSectionIndex && indexPath.row == lastRowIndex {
			let spinner = UIActivityIndicatorView(style: .medium)
			spinner.startAnimating()
			spinner.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: tableView.bounds.width, height: CGFloat(44))

			self.searchResultsTableView.tableFooterView = spinner
			self.searchResultsTableView.tableFooterView?.isHidden = false
			presenter?.fetchRepos()
		}
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		if let detailsViewController = UIStoryboard.init(name: "RepoDetails", bundle: Bundle.main).instantiateViewController(withIdentifier: "RepoDetailsViewController") as? RepoDetailsViewController {
			detailsViewController.presenter = RepoDetailsPresenter(view: detailsViewController, service: GitHubService())
			detailsViewController.repoData = presenter?.searchResults[indexPath.row]
			self.navigationController?.present(detailsViewController, animated: true, completion: nil)
			return
		}
	}
}

// MARK: - Error handling
extension SearchResultsViewController {

	func displayErrorMessage(forError error: ServiceErrors) {
		self.searchResultsTableView.tableFooterView?.isHidden = false
		popupError(withLabel: createErrorLabel(forCase: error))
	}
}
