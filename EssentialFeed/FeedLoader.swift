//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ivan Slavov (Tech Lead, Mobile Apps Team) on 21.11.23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}


protocol FeedLoader {
    func load(complition: @escaping (LoadFeedResult) -> Void)
}
