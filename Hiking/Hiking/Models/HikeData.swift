//
//  HikeData.swift
//  Hiking
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation
import SwiftUI

// Structure to contain the Hike related Data
// Identifiable Protocol allows the list to differentiate between different object/hikes
struct HikeData: Identifiable {
    // Provides ID per Hike Data
    var id = UUID()
    // Hike Name, Image URL and Miles
    let hikeName: String
    let hikeImageURL: String
    let hikeMiles: Double
}

extension HikeData{
    // Function to return Hike Data
    static func all() -> [HikeData]{
        return [
            HikeData(hikeName: "Ashland State Park", hikeImageURL: "Ashland-State-Park", hikeMiles: 7.0),
            HikeData(hikeName: "Audubon Broadmoor Wildlife Sanctury", hikeImageURL: "Audubon-Broadmoor-Wildlife-Sanctury", hikeMiles: 9.0),
            HikeData(hikeName: "Callahan State Park", hikeImageURL: "Callahan-State-Park", hikeMiles: 7.0),
            HikeData(hikeName: "Cushing Memorial Park", hikeImageURL: "Cushing-Memorial-Park", hikeMiles: 7.0),
            HikeData(hikeName: "Garden in the Woods", hikeImageURL: "Garden-in-the-Woods", hikeMiles: 3.7)
            
        ]
    }
}
