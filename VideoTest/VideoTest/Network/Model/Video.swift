//
//  Video.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import Foundation

struct Video: Decodable {
	let mediumURL: String
	let title: String
	let channelId: String
	let channelTitle: String
	let videoId: String
	let publishedAt: String
	let description: String
	let liveBroadcastContent: String
}
