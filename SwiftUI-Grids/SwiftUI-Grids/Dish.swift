//
//  Dish.swift
//  SwiftUI-Grids
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageURL: String
}


extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Burger", price: 10.0, imageURL: "burger"),
            Dish(name: "Chicken", price: 5.0, imageURL: "chicken"),
            Dish(name: "Fries", price: 3.0, imageURL: "fries"),
            Dish(name: "Fruits", price: 2.5, imageURL: "fruits"),
            Dish(name: "Pancakes", price: 10.0, imageURL: "pancakes")
        ]
    }
}
