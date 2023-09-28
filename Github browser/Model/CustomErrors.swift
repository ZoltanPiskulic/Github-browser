//
//  CustomErrors.swift
//  Github browser
//
//  Created by Thor on 2023. 09. 28..
//

import Foundation

enum HTTPErrors: Int, Error {
	case tooManyRequests = 422
	case serviceUnavailable = 503
	case other
}
