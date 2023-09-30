//
//  SearchResultsViewController.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import UIKit

class SearchResultsViewController: UIViewController {

	var searchResults = [RepoSearchResultItem]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension SearchResultsViewController: UITableViewDelegate, UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		searchResults.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: RepoResultsTableViewCell.identifier, for: indexPath) as! RepoResultsTableViewCell
		cell.repoNameLabelOutlet.text = searchResults[indexPath.row].fullName
		cell.repoDescriptionLabelOutlet.text = searchResults[indexPath.row].description ?? "No description given"
		cell.stargazersCountLabel.text = "\(searchResults[indexPath.row].stargazersCount)"
		return cell
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		return
	}
}
