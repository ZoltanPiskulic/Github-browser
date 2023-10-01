//
//  LoaderView.swift
//  Github browser
//
//  Created by Thor on 2023. 10. 01..
//

import UIKit

extension UIViewController {

	func displayLoader() {
		let overlay = UIAlertController(title: nil, message: "Loading", preferredStyle: .alert)
		let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
		
		loadingIndicator.style = .medium
		loadingIndicator.startAnimating()
		overlay.view.addSubview(loadingIndicator)
		
		self.present(overlay, animated: true, completion: nil)
	}

	func dismissLoader() {
		if let vc = self.presentedViewController, vc is UIAlertController {
			self.dismiss(animated: false, completion: nil)
		}
	}
}
