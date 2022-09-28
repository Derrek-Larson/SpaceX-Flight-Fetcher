//
//  ContainerView+Overrides.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import Foundation
import UIKit

class ContainerVC: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func overrideTraitCollection(forChild childViewController: UIViewController) -> UITraitCollection? {
        if UIDevice.current.orientation.isPortrait {
            return UITraitCollection(horizontalSizeClass: .compact)
        }
        return .current
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "splitViewEmbeded" {
            guard let splitViewController = segue.destination as? UISplitViewController else {
                print("splitview cast failed")
                fatalError()
            }
            guard let leftNavController = splitViewController.viewControllers.first as? UINavigationController else {
                print("nav cast failed")
                fatalError()
            }
            guard let mainViewController = leftNavController.viewControllers.first as? SpaceXFlightListController else {
                print("main view cast failed")
                fatalError()
            }
            guard let detailViewController = (splitViewController.viewControllers.last as? UINavigationController)?.topViewController as? FlightDetailViewController else {
                print("detail cast failed")
                fatalError()
            }
            do {
                let firstFlight = mainViewController.viewModel.flights.value?.first
                detailViewController.flightDataString = try firstFlight?.jsonString(encoding: .utf8) ?? ""
            } catch {
                print("DEGUB SCENEDELEGATE .JSONSTRING FAILED")
            }
            splitViewController.delegate = mainViewController
        }
    }
}
