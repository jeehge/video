//
//  YoutubeVideo.swift
//  VideoTest
//
//  Created by JH on 10/1/23.
//

import Foundation

struct YoutubeVideo: Codable {
	let items: [VideoItem]
	let kind: String?
	let etag: String?
	let pageInfo: PageInfo?
	let nextPageToken: String?
	let regionCode: String?
}

struct VideoItem: Codable {
	let kind: String?
	let etag: String?
	let nextPageToken: String?
	let prevPageToken: String?
	let repositoryUrl: String?
	let items: String?
	let id: Id?
	let snippet: Snippet?
}

struct PageInfo: Codable {
	let totalResults: Int?
	let resultsPerPage: Int?
}

struct Id: Codable {
	let kind: String?
	let videoId: String?
	let channelId: String?
	let playlistId: String?
}

struct Snippet: Codable {
	let publishedAt: String?
	let channelId: String?
	let title: String?
	let description: String?
	let channelTitle: String?
	let liveBroadcastContent: String?
	let thumbnails: Thumbnails?
	let publishTime: String?
}

struct Thumbnails: Codable {
	let `dafault`: Thumbnail?
	let medium: Thumbnail?
	let high: Thumbnail?
	let standard: Thumbnail?
	let maxres: Thumbnail?
}

struct Thumbnail: Codable {
	let url: String?
	let width: Int?
	let height: Int?
}
