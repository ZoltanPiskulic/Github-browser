//
//  SearchResultTableViewCell.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 30..
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {

	static let identifier = "SearchResultCell"

	static func nib() -> UINib {
		return UINib(nibName: self.identifier, bundle: nil)
	}

	@IBOutlet weak var repoNameLabel: UILabel!
	@IBOutlet weak var repoDescriptionLabel: UILabel!
	@IBOutlet weak var dateModifiedLabel: UILabel!
	@IBOutlet weak var stargazersCountLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
	}

}
