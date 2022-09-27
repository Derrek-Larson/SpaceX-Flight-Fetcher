//
//  SpaceXFlightEndpoint.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import Foundation

enum SpaceXEndpoint {
    case launches
}

extension SpaceXEndpoint: Endpoint {
    
    var base: String {
        return "https://api.spacexdata.com"
    }
    var path: String {
        switch self {
        case .launches: return "/v3/launches"
        default: return ""
        }
    }
    
}
