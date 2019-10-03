//
//  Array-Extensions.swift
//  SwiftUI-Grids
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation

// Funcrtion to chunk images into [x,x] grid
extension Array {
    func chunked(into size: Int) -> [[Element]]{
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0..<Swift.min($0 + size, count)])
        }
    }
}
