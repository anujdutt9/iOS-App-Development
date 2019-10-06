//
//  NetworkingManager.swift
//  SwiftUI-JSON
//
//  Created by Anuj Dutt on 10/6/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    // didChangeProperty: Passthrough Subject Publisher that will alert the UI when something is changed
    // returns a networking manager and never return an error
    var willChange = PassthroughSubject<NetworkingManager, Never>()
    // Data List
    // @Published: automatically synthesize the "willChange" publisher and call it on "willSet".
    @Published var dataList = DataAPIList(results: []){
        willSet {
            // didSend to alert the Publisher that the Data from the API has changed
            self.willChange.send(self)
        }
    }
    
    // init: method for making networking requests
    init() {
        // Define the JSON API URL
        // URL Source: https://pokeapi.co/
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else {return}
        // URL Session Data Task
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            // Check that we got the data back from the URL Request
            guard let data = data else {return}
            do {
                // Decode JSON returned from the URL and get the data from dataTask
                let dataList = try JSONDecoder().decode(DataAPIList.self, from: data)
                // Update the dataList
                DispatchQueue.main.async {
                   // Set the dataList: {"results: {"name": xxxx, "url": xxxx}"}
                   self.dataList = dataList
                }
            }
            catch let error as NSError{
                print("Error: \(error)")
            }
        }.resume()
    }
}
