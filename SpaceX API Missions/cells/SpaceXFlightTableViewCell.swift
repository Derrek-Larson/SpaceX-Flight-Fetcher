//
//  SpaceXFlightTableViewCell.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import UIKit

class SpaceXFlightTableViewCell: UITableViewCell {

    @IBOutlet weak var missionNameLabel: UILabel!
    @IBOutlet weak var rocketNameLabel: UILabel!
    @IBOutlet weak var launchSiteLabel: UILabel!
    @IBOutlet weak var launchDateLabel: UILabel!
    @IBOutlet weak var launchPatchImage: UIImageView!
    
    var spaceXFlightModelElement: SpaceXFlightModelElement?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(spaceXFlightElement: SpaceXFlightModelElement) {
        spaceXFlightModelElement = spaceXFlightElement
        missionNameLabel.text = spaceXFlightElement.missionName
        rocketNameLabel.text = spaceXFlightElement.rocket.rocketName.rawValue
        launchDateLabel.text = spaceXFlightElement.launchDateUTC
        launchSiteLabel.text = spaceXFlightElement.launchSite.siteName.rawValue
    }
}
