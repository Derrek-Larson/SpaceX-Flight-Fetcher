//
//  SpaceXFlightTableViewCell.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import UIKit

class SpaceXFlightTableViewCell: UITableViewCell {

    @IBOutlet weak var flightIDLabel: UILabel!
    
    var spaceXFlightModelElement: SpaceXFlightModelElement?
    
    @IBOutlet weak var flightDateLabel: UILabel!
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
        flightIDLabel.text = "Flight Number \(spaceXFlightElement.flightNumber)"
        flightDateLabel.text = spaceXFlightElement.launchDateUTC
    }
        
}
