//
//  Result.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import Foundation
enum Result<T, U> where U: Error {
    case success(T)
    case failure(U)
}
