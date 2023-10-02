//
//  YoutubeAPI.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import Foundation

/**
 Github Docs >>  https://docs.github.com/en/rest/repos/repos#list-organization-repositories
 이슈 목록 가져오기 API >>  https://docs.github.com/en/rest/reference/issues
*/

enum YoutubeAPI {
	case search(String, String?)
	case list(String)
}

extension YoutubeAPI {
	static let baseURL = "https://www.googleapis.com/youtube/v3"
	
	private var key: String {
		"AIzaSyCOE_d5G8tSGpsvj25qZ-KqlDqo7VpjGSg"
	}
	
	var path: String {
		switch self {
		case .search(let keywoard, let token):
			if let token = token {
				return YoutubeAPI.baseURL + "/search?key=\(key)&part=snippet&q=\(keywoard)&order=date&pageToken=\(token)&maxResults=50"
			} else {
				return YoutubeAPI.baseURL + "/search?key=\(key)&part=snippet&q=\(keywoard)&order=date&maxResults=50"
			}
		case .list(let keywoard):
			return YoutubeAPI.baseURL + "/search?key=\(key)&part=snippet&q=\(keywoard)&order=date&maxResults=50"
		}
	}
	
	var method: Method {
		switch self {
		case .search:
			return .GET
		case .list:
			return .GET
		}
	}
}
