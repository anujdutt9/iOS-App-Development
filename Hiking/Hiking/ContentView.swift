//
//  ContentView.swift
//  Hiking
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Get the Hikes Data
    let hikes = HikeData.all()
    
    var body: some View {
        // Navigation View
        NavigationView {
            // Create a List View of Text
            List(hikes) { hike in
                HikeCell(hike: hike)
            }
        .navigationBarTitle("Hikes")
        }
    }
}


// Hike Cell View
struct HikeCell: View {
    let hike: HikeData
    
    var body: some View {
        // Return Navigation Link/Button to a new page with Hike Information
        return NavigationLink(destination: HikeDetail(hike: hike)) {
            HStack {
                // Show Hike Images
                Image(hike.hikeImageURL)
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .leading)
                    .cornerRadius(20)
                    
                // Show Hike Name and Miles in Vertical Stack
                VStack(alignment: .leading) {
                    Text(hike.hikeName)
                    Text(String(format: "%.1f miles",hike.hikeMiles))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
