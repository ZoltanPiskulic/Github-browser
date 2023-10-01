//
//  MakeErrorString.swift
//  Github browser
//
//  Created by Thor on 2023. 10. 01..
//

import Foundation

func createErrorLabel(forCase error: ServiceErrors) -> String {
	switch error {
		case .serviceUnavailable:
			return "The server is unavailable, try again later."
		case .forbidden:
			return "We can't display this data, try again with something else."
		case .notFound:
			return "Did not find any more results."
		case .noResult, .unprocessable:
			return "Did not find data with these parameters, try something else."
		case .other:
			return "Unexpected error occured, try again later."
	}
}
