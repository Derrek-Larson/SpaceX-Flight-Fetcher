// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fairings = try Fairings(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.fairingsTask(with: url) { fairings, response, error in
//     if let fairings = fairings {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - Fairings
struct Fairings: Codable {
    let reused, recoveryAttempt, recovered: Bool?
    let ship: Ship?

    enum CodingKeys: String, CodingKey {
        case reused
        case recoveryAttempt = "recovery_attempt"
        case recovered, ship
    }
}

// MARK: Fairings convenience initializers and mutators

extension Fairings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Fairings.self, from: data)
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
        reused: Bool?? = nil,
        recoveryAttempt: Bool?? = nil,
        recovered: Bool?? = nil,
        ship: Ship?? = nil
    ) -> Fairings {
        return Fairings(
            reused: reused ?? self.reused,
            recoveryAttempt: recoveryAttempt ?? self.recoveryAttempt,
            recovered: recovered ?? self.recovered,
            ship: ship ?? self.ship
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
