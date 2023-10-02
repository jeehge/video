//
//  YoutubeViewModel.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import Foundation
import SwiftUI
import FirebaseFirestore
import Firebase

class YoutubeViewModel: ObservableObject {
	@Published var list: [Video] = []
	
	init() {
		getVideo()
	}
	
	private func getVideo() {
		FirebaseService().getVideo { [weak self] (result: Result<[Video], APIError>) in
			guard let self = self else { return }
			switch result {
			case let .success(result):
				list = result
			case let .failure(error):
				print(error)
			}
		}
	}
}

