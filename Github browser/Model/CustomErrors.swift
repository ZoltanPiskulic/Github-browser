//
//  CustomErrors.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation

enum ServiceErrors: Int, Error {
	case unprocessable = 422
	case serviceUnavailable = 503
	case forbidden = 403
	case notFound = 404
	case noResult
	case other
}
