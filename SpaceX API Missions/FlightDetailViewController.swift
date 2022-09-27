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
    
    var flightDataString: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = flightDataString ?? ""
    }
}
