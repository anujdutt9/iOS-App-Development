//
//  DataAPIList.swift
//  SwiftUI-JSON
//
//  Created by Anuj Dutt on 10/6/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation

struct DataAPIList: Decodable {
    // Results from JSON API of type "DataListEntry"
    var results: [DataListEntry]
}

// "DataListEntry":
struct DataListEntry: Decodable {
    // JSON API returns a dictionary called results with keys "name" and "URL"
    var name: String
    var url: String
}
