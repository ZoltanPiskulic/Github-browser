//
//  RepoDetailsViewController.swift
//  Github browser
//
//  Created by Thor on 2023. 10. 01..
//

import UIKit

class RepoDetailsViewController: UIViewController {

	var repoData: RepoSearchResultItem?
	var presenter: RepoDetailsPresenter?

	@IBOutlet weak var profilePictureImageView: UIImageView!
	@IBOutlet weak var usernameLabel: UILabel!
	@IBOutlet weak var profileLinkTextView: UITextView!
	@IBOutlet weak var repoNameLabel: UILabel!
	@IBOutlet weak var repoDescriptionLabel: UILabel!
	@IBOutlet weak var repoLinkTextView: UITextView!
	@IBOutlet weak var stargazerCountLabel: UILabel!
	@IBOutlet weak var loaderView: UIView!

	override func viewDidLoad() {
        super.viewDidLoad()
		presenter = RepoDetailsPresenter(view: self, service: GitHubService())
		profilePictureImageView.layer.cornerRadius = profilePictureImageView.frame.width/2
		animateDetailLoaderView(isNeeded: true)
		displayLoader()
		presenter?.fetchProfilePicture(fromUrl: repoData?.owner?.avatarURL)
		presenter?.fetchRepoDetails(ofRepo: repoData?.fullName)
    }

	func configLabels(withData data: GitRepoDetails) {
		usernameLabel.text = data.owner.login
		repoNameLabel.text = data.name
		repoDescriptionLabel.text = data.description
		stargazerCountLabel.text = "\(data.stargazersCount)"
	}

	func configHyperlinks(withData data: GitRepoDetails) {
		let profileUrlString = data.owner.htmlURL
		let profileLinkAttributedString = NSMutableAttributedString(string: profileUrlString)
		profileLinkAttributedString.addAttribute(.link, value: profileUrlString, range: NSRange(location: 0, length: profileUrlString.count))
		profileLinkTextView.attributedText = profileLinkAttributedString
		profileLinkTextView.font = UIFont.systemFont(ofSize: 16)

		let repoUrlString = data.htmlURL
		let repoLinkAttributedString = NSMutableAttributedString(string: repoUrlString)
		repoLinkAttributedString.addAttribute(.link, value: repoUrlString, range: NSRange(location: 0, length: repoUrlString.count))
		repoLinkTextView.attributedText = repoLinkAttributedString
		repoLinkTextView.font = UIFont.systemFont(ofSize: 16)
	}

	func animateDetailLoaderView(isNeeded state: Bool) {
		switch state {
			case true:
				loaderView.isHidden = false
				self.loaderView.alpha = 1
			case false:
				UIView.animate(withDuration: 1.0,
							   delay: 0,
							   options: .curveEaseIn,
							   animations: { [weak self] in
					self?.loaderView.alpha = 0
				}) { [weak self] _ in
					self?.loaderView.isHidden = true
				}
		}
	}
}

// MARK: - Presenter related methods
extension RepoDetailsViewController: RepoDetailsView {

	func displayData(ofRepository repoData: GitRepoDetails) {
		self.configLabels(withData: repoData)
		self.configHyperlinks(withData: repoData)
		self.dismissLoader()
		self.animateDetailLoaderView(isNeeded: false)
	}

	func showProfilePicture(image: UIImage) {
		self.profilePictureImageView.image = image
	}
}

// MARK: - Error handling
extension RepoDetailsViewController {
	
	func showError() {
		popupError(withLabel: "An error occured, please try again.", completion: {
			self.dismiss(animated: true, completion: nil)
		})
	}
}
