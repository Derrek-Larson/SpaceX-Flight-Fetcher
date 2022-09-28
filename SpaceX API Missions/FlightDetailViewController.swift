//
//  FlightDetailViewController.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import UIKit

class FlightDetailViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    var flightDataString: String? {
        didSet {
            guard let label = dataLabel else {
                return
            }
            label.text = flightDataString
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = flightDataString ?? ""
    }

    
}
