//
//  FlightDetailViewController.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import Combine
import UIKit

class FlightDetailViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    var flightDataString: String? = nil
    let flightDataStringP = PassthroughSubject<String,Never>()
    var cancellables = Set<AnyCancellable>()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = flightDataString ?? ""
        
        flightDataStringP.sink { [weak self] in
            self?.dataLabel.text = $0
        }.store(in: &cancellables)
    }
    
}
