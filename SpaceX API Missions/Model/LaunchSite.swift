// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launchSite = try LaunchSite(json)
//
// To read values from URLs:
//
//   let task = URLSession.shared.launchSiteTask(with: url) { launchSite, response, error in
//     if let launchSite = launchSite {
//       ...
//     }
//   }
//   task.resume()

import Foundation

// MARK: - LaunchSite
struct LaunchSite: Codable {
    let siteID: SiteID
    let siteName: SiteName
    let siteNameLong: SiteNameLong

    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case siteName = "site_name"
        case siteNameLong = "site_name_long"
    }
}

// MARK: LaunchSite convenience initializers and mutators

extension LaunchSite {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LaunchSite.self, from: data)
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
        siteID: SiteID? = nil,
        siteName: SiteName? = nil,
        siteNameLong: SiteNameLong? = nil
    ) -> LaunchSite {
        return LaunchSite(
            siteID: siteID ?? self.siteID,
            siteName: siteName ?? self.siteName,
            siteNameLong: siteNameLong ?? self.siteNameLong
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
