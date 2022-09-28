// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let spaceXFlightModelElement = try SpaceXFlightModelElement(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.spaceXFlightModelElementTask(with: url) { spaceXFlightModelElement, response, error in
//     if let spaceXFlightModelElement = spaceXFlightModelElement {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - SpaceXFlightModelElement
struct SpaceXFlightModelElement: Codable {
    let flightNumber: Int
    let missionName: String
    let missionID: [String]
    let upcoming: Bool
    let launchYear: String
    let launchDateUnix: Int
    let launchDateUTC: String
    let launchDateLocal: Date
    let isTentative: Bool
    let tentativeMaxPrecision: TentativeMaxPrecision
    let tbd: Bool
    let launchWindow: Int?
    let rocket: Rocket
    let ships: [String]
    let telemetry: Telemetry
    let launchSite: LaunchSite
    let launchSuccess: Bool?
    let launchFailureDetails: LaunchFailureDetails?
    let links: Links
    let details, staticFireDateUTC: String?
    let staticFireDateUnix: Int?
    let timeline: [String: Int?]?
    let crew: [String]?
    let lastDateUpdate: String?
    let lastLlLaunchDate, lastLlUpdate: String?
    let lastWikiLaunchDate, lastWikiRevision, lastWikiUpdate: String?
    let launchDateSource: LaunchDateSource?

    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case missionName = "mission_name"
        case missionID = "mission_id"
        case upcoming
        case launchYear = "launch_year"
        case launchDateUnix = "launch_date_unix"
        case launchDateUTC = "launch_date_utc"
        case launchDateLocal = "launch_date_local"
        case isTentative = "is_tentative"
        case tentativeMaxPrecision = "tentative_max_precision"
        case tbd
        case launchWindow = "launch_window"
        case rocket, ships, telemetry
        case launchSite = "launch_site"
        case launchSuccess = "launch_success"
        case launchFailureDetails = "launch_failure_details"
        case links, details
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case timeline, crew
        case lastDateUpdate = "last_date_update"
        case lastLlLaunchDate = "last_ll_launch_date"
        case lastLlUpdate = "last_ll_update"
        case lastWikiLaunchDate = "last_wiki_launch_date"
        case lastWikiRevision = "last_wiki_revision"
        case lastWikiUpdate = "last_wiki_update"
        case launchDateSource = "launch_date_source"
    }
}

// MARK: SpaceXFlightModelElement convenience initializers and mutators

extension SpaceXFlightModelElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SpaceXFlightModelElement.self, from: data)
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
        flightNumber: Int? = nil,
        missionName: String? = nil,
        missionID: [String]? = nil,
        upcoming: Bool? = nil,
        launchYear: String? = nil,
        launchDateUnix: Int? = nil,
        launchDateUTC: String? = nil,
        launchDateLocal: Date? = nil,
        isTentative: Bool? = nil,
        tentativeMaxPrecision: TentativeMaxPrecision? = nil,
        tbd: Bool? = nil,
        launchWindow: Int?? = nil,
        rocket: Rocket? = nil,
        ships: [String]? = nil,
        telemetry: Telemetry? = nil,
        launchSite: LaunchSite? = nil,
        launchSuccess: Bool?? = nil,
        launchFailureDetails: LaunchFailureDetails?? = nil,
        links: Links? = nil,
        details: String?? = nil,
        staticFireDateUTC: String?? = nil,
        staticFireDateUnix: Int?? = nil,
        timeline: [String: Int?]?? = nil,
        crew: [String]?? = nil,
        lastDateUpdate: String?? = nil,
        lastLlLaunchDate: String?? = nil,
        lastLlUpdate: String?? = nil,
        lastWikiLaunchDate: String?? = nil,
        lastWikiRevision: String?? = nil,
        lastWikiUpdate: String?? = nil,
        launchDateSource: LaunchDateSource?? = nil
    ) -> SpaceXFlightModelElement {
        return SpaceXFlightModelElement(
            flightNumber: flightNumber ?? self.flightNumber,
            missionName: missionName ?? self.missionName,
            missionID: missionID ?? self.missionID,
            upcoming: upcoming ?? self.upcoming,
            launchYear: launchYear ?? self.launchYear,
            launchDateUnix: launchDateUnix ?? self.launchDateUnix,
            launchDateUTC: launchDateUTC ?? self.launchDateUTC,
            launchDateLocal: launchDateLocal ?? self.launchDateLocal,
            isTentative: isTentative ?? self.isTentative,
            tentativeMaxPrecision: tentativeMaxPrecision ?? self.tentativeMaxPrecision,
            tbd: tbd ?? self.tbd,
            launchWindow: launchWindow ?? self.launchWindow,
            rocket: rocket ?? self.rocket,
            ships: ships ?? self.ships,
            telemetry: telemetry ?? self.telemetry,
            launchSite: launchSite ?? self.launchSite,
            launchSuccess: launchSuccess ?? self.launchSuccess,
            launchFailureDetails: launchFailureDetails ?? self.launchFailureDetails,
            links: links ?? self.links,
            details: details ?? self.details,
            staticFireDateUTC: staticFireDateUTC ?? self.staticFireDateUTC,
            staticFireDateUnix: staticFireDateUnix ?? self.staticFireDateUnix,
            timeline: timeline ?? self.timeline,
            crew: crew ?? self.crew,
            lastDateUpdate: lastDateUpdate ?? self.lastDateUpdate,
            lastLlLaunchDate: lastLlLaunchDate ?? self.lastLlLaunchDate,
            lastLlUpdate: lastLlUpdate ?? self.lastLlUpdate,
            lastWikiLaunchDate: lastWikiLaunchDate ?? self.lastWikiLaunchDate,
            lastWikiRevision: lastWikiRevision ?? self.lastWikiRevision,
            lastWikiUpdate: lastWikiUpdate ?? self.lastWikiUpdate,
            launchDateSource: launchDateSource ?? self.launchDateSource
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
