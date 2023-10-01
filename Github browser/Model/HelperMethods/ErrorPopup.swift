//
//  ErrorPopup.swift
//  Github browser
//
//  Created by Thor on 2023. 10. 01..
//

import UIKit

extension UIViewController {

	func popupError(withLabel label: String, completion: (() -> Void)? = nil) {
		let alert = UIAlertController(title: "Error", message: label, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
			alert.dismiss(animated: true, completion: completion)
		}))
		self.present(alert, animated: true, completion: nil)
	}
}
