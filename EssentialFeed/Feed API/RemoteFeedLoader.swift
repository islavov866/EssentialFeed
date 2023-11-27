//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Ivan Slavov (Tech Lead, Mobile Apps Team) on 22.11.23.
//

import Foundation

public final class RemoteFeedLoader: FeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectiovity
        case invalidData
    }
    
    public typealias Result = LoadFeedResult

    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(Error.connectiovity))
            }
        }
    }
}
