// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orbitParams = try OrbitParams(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.orbitParamsTask(with: url) { orbitParams, response, error in
//     if let orbitParams = orbitParams {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - OrbitParams
struct OrbitParams: Codable {
    let referenceSystem: ReferenceSystem?
    let regime: Regime?
    let longitude, semiMajorAxisKM, eccentricity, periapsisKM: Double?
    let apoapsisKM, inclinationDeg, periodMin, lifespanYears: Double?
    let epoch: String?
    let meanMotion, raan: Double?
    let argOfPericenter, meanAnomaly: Double?

    enum CodingKeys: String, CodingKey {
        case referenceSystem = "reference_system"
        case regime, longitude
        case semiMajorAxisKM = "semi_major_axis_km"
        case eccentricity
        case periapsisKM = "periapsis_km"
        case apoapsisKM = "apoapsis_km"
        case inclinationDeg = "inclination_deg"
        case periodMin = "period_min"
        case lifespanYears = "lifespan_years"
        case epoch
        case meanMotion = "mean_motion"
        case raan
        case argOfPericenter = "arg_of_pericenter"
        case meanAnomaly = "mean_anomaly"
    }
}

// MARK: OrbitParams convenience initializers and mutators

extension OrbitParams {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(OrbitParams.self, from: data)
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
        referenceSystem: ReferenceSystem?? = nil,
        regime: Regime?? = nil,
        longitude: Double?? = nil,
        semiMajorAxisKM: Double?? = nil,
        eccentricity: Double?? = nil,
        periapsisKM: Double?? = nil,
        apoapsisKM: Double?? = nil,
        inclinationDeg: Double?? = nil,
        periodMin: Double?? = nil,
        lifespanYears: Double?? = nil,
        epoch: String?? = nil,
        meanMotion: Double?? = nil,
        raan: Double?? = nil,
        argOfPericenter: Double?? = nil,
        meanAnomaly: Double?? = nil
    ) -> OrbitParams {
        return OrbitParams(
            referenceSystem: referenceSystem ?? self.referenceSystem,
            regime: regime ?? self.regime,
            longitude: longitude ?? self.longitude,
            semiMajorAxisKM: semiMajorAxisKM ?? self.semiMajorAxisKM,
            eccentricity: eccentricity ?? self.eccentricity,
            periapsisKM: periapsisKM ?? self.periapsisKM,
            apoapsisKM: apoapsisKM ?? self.apoapsisKM,
            inclinationDeg: inclinationDeg ?? self.inclinationDeg,
            periodMin: periodMin ?? self.periodMin,
            lifespanYears: lifespanYears ?? self.lifespanYears,
            epoch: epoch ?? self.epoch,
            meanMotion: meanMotion ?? self.meanMotion,
            raan: raan ?? self.raan,
            argOfPericenter: argOfPericenter ?? self.argOfPericenter,
            meanAnomaly: meanAnomaly ?? self.meanAnomaly
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
