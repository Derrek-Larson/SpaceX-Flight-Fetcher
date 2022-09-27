// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rocket = try Rocket(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.rocketTask(with: url) { rocket, response, error in
//     if let rocket = rocket {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - Rocket
struct Rocket: Codable {
    let rocketID: RocketID
    let rocketName: RocketName
    let rocketType: RocketType
    let firstStage: FirstStage
    let secondStage: SecondStage
    let fairings: Fairings?

    enum CodingKeys: String, CodingKey {
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case fairings
    }
}

// MARK: Rocket convenience initializers and mutators

extension Rocket {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Rocket.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        rocketID: RocketID? = nil,
        rocketName: RocketName? = nil,
        rocketType: RocketType? = nil,
        firstStage: FirstStage? = nil,
        secondStage: SecondStage? = nil,
        fairings: Fairings?? = nil
    ) -> Rocket {
        return Rocket(
            rocketID: rocketID ?? self.rocketID,
            rocketName: rocketName ?? self.rocketName,
            rocketType: rocketType ?? self.rocketType,
            firstStage: firstStage ?? self.firstStage,
            secondStage: secondStage ?? self.secondStage,
            fairings: fairings ?? self.fairings
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
