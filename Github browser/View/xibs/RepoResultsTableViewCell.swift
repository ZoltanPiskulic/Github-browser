//
//  RepoResultsTableViewCell.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 29..
//

import UIKit

class RepoResultsTableViewCell: UITableViewCell {

	static let identifier = "RepoResultCell"

	static func nib() -> UINib {
		return UINib(nibName: self.identifier, bundle: nil)
	}

	@IBOutlet weak var repoNameLabelOutlet: UILabel!
	@IBOutlet weak var repoDescriptionLabelOutlet: UILabel!
	@IBOutlet weak var stargazersCountLabel: UILabel!
	
	override func awakeFromNib() {
		super.awakeFromNib()
	}

}
