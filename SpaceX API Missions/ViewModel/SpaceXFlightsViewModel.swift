//
//  SpaceXFlightsViewModel.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import Foundation
import Combine

class SpaceXFlightsViewModel {
    let flights = CurrentValueSubject<SpaceXFlightModel?, Never>(nil)
    
    public func flightForFlightNumber(flightNumber: Int) -> SpaceXFlightModelElement? {
        return flights.value?.first(where: { spaceFlightModelElement in
            spaceFlightModelElement.flightNumber == flightNumber
        })
    }
    
    public func fetchFlights() {
        let task = URLSession.shared.spaceXFlightModelTask(with: URL(string: "https://api.spacexdata.com/v3/launches")!) { [weak flights] spaceXCollection, response, error in
            if let error = error {
                print("SPACEX FLIGHT FETCH ERROR: \(error)")
                return
            }
            if let spaceXCollection = spaceXCollection {
                flights?.send(spaceXCollection)
            } else {
                print("SPACEX FLIGHT FETCH RETURNED NIL")
            }
        }
        task.resume()
    }
}
