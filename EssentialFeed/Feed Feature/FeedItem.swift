//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Ivan Slavov (Tech Lead, Mobile Apps Team) on 21.11.23.
//

import Foundation

struct FeedItem {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URLRequest
}
