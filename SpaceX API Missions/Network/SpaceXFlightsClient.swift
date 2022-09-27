//
//  SpaceXFlightsClient.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import Foundation

class SpaceXFlightsClient: APIClient {
    
    let session: URLSession
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func getFlights(endpoint: SpaceXEndpoint, completion: @escaping (Result<SpaceXFlightModel?, APIError>) -> Void) {
        guard let request = endpoint.request else {
            return
        }
        fetch(with: request, decode: { jsonData -> SpaceXFlightModel? in
            print("JSON DATA: \(jsonData)")
            guard let spaceXFlightModel = jsonData as? SpaceXFlightModel else {
                print("failed jsonData to SpaceXFlightModel cast")
                return nil
            }
            return spaceXFlightModel
        }, completion: completion)
    }
}
