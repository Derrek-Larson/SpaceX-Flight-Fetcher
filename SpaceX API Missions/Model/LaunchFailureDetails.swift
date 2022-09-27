// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launchFailureDetails = try LaunchFailureDetails(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.launchFailureDetailsTask(with: url) { launchFailureDetails, response, error in
//     if let launchFailureDetails = launchFailureDetails {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - LaunchFailureDetails
struct LaunchFailureDetails: Codable {
    let time: Int
    let altitude: Int?
    let reason: String
}

// MARK: LaunchFailureDetails convenience initializers and mutators

extension LaunchFailureDetails {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LaunchFailureDetails.self, from: data)
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
        time: Int? = nil,
        altitude: Int?? = nil,
        reason: String? = nil
    ) -> LaunchFailureDetails {
        return LaunchFailureDetails(
            time: time ?? self.time,
            altitude: altitude ?? self.altitude,
            reason: reason ?? self.reason
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
