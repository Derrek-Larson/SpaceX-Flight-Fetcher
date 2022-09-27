//
//  SpaceXError.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import Foundation

enum APIError: Error {
    case requestFailure
    case jsonCastFailure
    case invalidData
    case responseUnsuccessful
    case jsonParseFailure
    
    var localizedDescription: String {
        switch self {
        case .requestFailure: return "Request Failed"
        case .invalidData: return "Invalid Data"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonParseFailure: return "JSON Parse Failed"
        case .jsonCastFailure: return "Failed to convert JSON"
        }
    }
}
