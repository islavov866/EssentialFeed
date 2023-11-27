//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ivan Slavov (Tech Lead, Mobile Apps Team) on 21.11.23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
