//
//  HTTPClient.swift
//  CatFacts
//
//  Created by MUKUL SHARMA on 20/06/21.
//

import Foundation

public protocol HTTPClient {
    typealias HTTPClientResult = Swift.Result<(Data, HTTPURLResponse), Error>
    
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate threads, if needed.
    func execute(from request: URLRequest, completion: @escaping (HTTPClientResult) -> Void)
}

