//
//  ImageFetcher.swift
//  SpaceX API Missions
//
//  Created by Derrek Larson on 9/27/22.
//

import Foundation
import UIKit

struct ImageFetcher {
    private static func getData(from url: URL, completion: @escaping(Data?, URLResponse?, Error?) -> Void) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    static func downloadImage(from url: URL, imageView: UIImageView) {
        ImageFetcher.getData(from: url) { data, response, error in
            guard let data = data, error == nil else {
                print("DEBUG Image fetch error: \(error.debugDescription)")
                return
            }
            DispatchQueue.main.async {
                imageView.image = UIImage(data: data)
            }
        }
    }
}
