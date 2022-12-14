// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let secondStage = try SecondStage(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.secondStageTask(with: url) { secondStage, response, error in
//     if let secondStage = secondStage {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SecondStage
struct SecondStage: Codable {
    let block: Int?
    let payloads: [Payload]
}

// MARK: SecondStage convenience initializers and mutators

extension SecondStage {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SecondStage.self, from: data)
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
        block: Int?? = nil,
        payloads: [Payload]? = nil
    ) -> SecondStage {
        return SecondStage(
            block: block ?? self.block,
            payloads: payloads ?? self.payloads
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
