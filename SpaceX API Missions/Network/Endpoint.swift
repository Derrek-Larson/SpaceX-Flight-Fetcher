//
//  Endpoint.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    var urlComponents: URLComponents? {
        var components = URLComponents(string: base)
        components?.path = path
        return components
    }
    
    var request: URLRequest? {
        guard let url = urlComponents?.url else {
            return nil
        }
        return URLRequest(url: url)
    }
}

