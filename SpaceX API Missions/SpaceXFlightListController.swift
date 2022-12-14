//
//  ViewController.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/25/22.
//

import UIKit
import Combine

class SpaceXFlightListController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISplitViewControllerDelegate {
        
    @IBOutlet weak var tableView: UITableView!
    
    let cellReuseIdentifier = "flight_cell"
    let viewModel: SpaceXFlightsViewModel
    var imageCache: [Int: UIImage] = [:]
    var cancellables = Set<AnyCancellable>()
    
    public init() {
        self.viewModel = SpaceXFlightsViewModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.viewModel = coder.decodeObject(forKey: "viewModel") as? SpaceXFlightsViewModel ?? SpaceXFlightsViewModel()
        super.init(coder: coder)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.flights.value?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? SpaceXFlightTableViewCell else {
            print("DEBUG FAILED CELL CAST")
            return UITableViewCell()
        }
        guard let flightElement = viewModel.flights.value?[indexPath.row] else {
            print("DEBUG FAILED ASSIGNMENT TO VIEWMODEL.FLIGHTS.VALUE[INDEXPATH.ROW]")
            return UITableViewCell()
        }
        if let image = imageCache[flightElement.flightNumber] {
            cell.launchPatchImage.image = image
        } else {
            guard let url = URL(string: flightElement.links.missionPatchSmall ?? "") else {
                cell.configure(spaceXFlightElement: flightElement)
                return cell
            }
            ImageFetcher.downloadImage(from: url, imageView: cell.launchPatchImage)
            imageCache[flightElement.flightNumber] = cell.launchPatchImage.image ?? UIImage()
        }
        cell.configure(spaceXFlightElement: flightElement)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let spaceXFlightModelElement = viewModel.flights.value?[indexPath.row] else {
            return
        }
        do {
            guard let flightDataString = try spaceXFlightModelElement.jsonString(encoding: .utf8) else {
                print("DEBUG FLIGHT DATA STRING FAILED: NIL RESULT")
                return
            }
            if let detailViewController = (splitViewController?.viewController(for: .secondary) as? UINavigationController)?.topViewController as? FlightDetailViewController {
                splitViewController?.showDetailViewController(detailViewController, sender: nil)
                detailViewController.flightDataString = flightDataString
            }
            
            splitViewController?.show(.secondary)
        } catch {
            print("DEBUG FLIGHT DATA STRING FAILED")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.flights.sink { [weak self] spaceXFlightsModel in
            print("DEBUG FLIGHTS PUBLISHER SUBSCRIPTION HIT")
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }.store(in: &cancellables)
        viewModel.fetchFlights()
    }
    
    func splitViewController(_ svc: UISplitViewController, topColumnForCollapsingToProposedTopColumn proposedTopColumn: UISplitViewController.Column) -> UISplitViewController.Column {
        return .primary
    }


}



