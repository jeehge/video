//
//  FirebaseService.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import FirebaseFirestore
import UIKit

final class FirebaseService {
	private var video = Firestore.firestore().collection("video")

	func getVideo(completion: @escaping (Result<[Video], APIError>) -> Void) {
		video.getDocuments { querySnapshot, error in
			if let error = error {
				debugPrint("FirebaseService Error: \(error)")
				completion(.failure(.firebaseError(error.localizedDescription)))
			} else {
				guard let querySnapshot = querySnapshot else { return }

				var videos: [Video] = []
				
				for document in querySnapshot.documents {
					let data: [String: Any] = document.data()
					guard let items = data["items"] as? [[String: Any]] else { return }
					
					items.forEach { item in
						videos.append(Video(mediumURL: item["mediumURL"] as! String,
											title: item["title"] as! String,
											channelId: item["channelId"] as! String,
											channelTitle: item["channelTitle"] as! String,
											videoId: item["videoId"] as! String,
											publishedAt: item["publishedAt"] as! String,
											description: item["description"] as! String,
											liveBroadcastContent: item["liveBroadcastContent"] as! String))
					}
				}
				

				completion(.success(videos))
			}
		}
	}
}
