//
//  APIError.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import Foundation

enum APIError {
	case errorCode(Int)
	case noData
	case parseError
	case message(String)
	case firebaseError(String)
}

extension APIError: LocalizedError {
	var errorText: String? {
		switch self {
		case .errorCode(let code):
			return "status code : \(code)"
		case .noData:
			return "데이터가 없습니다."
		case .parseError:
			return "파싱 에러"
		case .message(let message):
			return "error: \(message)"
		case .firebaseError(let message):
			return "firebase error: \(message)"
		}
	}
}
