// Core.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let core = try Core(json)

import Foundation

// MARK: - Core
struct Core: Codable {
    let coreSerial: String?
    let flight, block: Int?
    let gridfins, legs, reused, landSuccess: Bool?
    let landingIntent: Bool?
    let landingType: LandingType?
    let landingVehicle: LandingVehicle?

    enum CodingKeys: String, CodingKey {
        case coreSerial = "core_serial"
        case flight, block, gridfins, legs, reused
        case landSuccess = "land_success"
        case landingIntent = "landing_intent"
        case landingType = "landing_type"
        case landingVehicle = "landing_vehicle"
    }
}

// MARK: Core convenience initializers and mutators

extension Core {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Core.self, from: data)
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
        coreSerial: String?? = nil,
        flight: Int?? = nil,
        block: Int?? = nil,
        gridfins: Bool?? = nil,
        legs: Bool?? = nil,
        reused: Bool?? = nil,
        landSuccess: Bool?? = nil,
        landingIntent: Bool?? = nil,
        landingType: LandingType?? = nil,
        landingVehicle: LandingVehicle?? = nil
    ) -> Core {
        return Core(
            coreSerial: coreSerial ?? self.coreSerial,
            flight: flight ?? self.flight,
            block: block ?? self.block,
            gridfins: gridfins ?? self.gridfins,
            legs: legs ?? self.legs,
            reused: reused ?? self.reused,
            landSuccess: landSuccess ?? self.landSuccess,
            landingIntent: landingIntent ?? self.landingIntent,
            landingType: landingType ?? self.landingType,
            landingVehicle: landingVehicle ?? self.landingVehicle
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
