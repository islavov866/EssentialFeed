//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Ivan Slavov (Tech Lead, Mobile Apps Team) on 27.11.23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
