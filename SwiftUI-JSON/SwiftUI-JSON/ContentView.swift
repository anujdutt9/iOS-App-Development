//
//  ContentView.swift
//  SwiftUI-JSON
//
//  Created by Anuj Dutt on 10/6/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Init Function
    init() {
        // Change NavigationView Title Color
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
    }
    
    // State allows us to bind to ObservableObject
    // As values States change, the UI is rendered again to update
    // @ObservedObject: look for published data update
    @ObservedObject var networkingManager = NetworkingManager()
    var body: some View {
        // Navigation Bar
        NavigationView{
            // List View: Goes over the results list identified uniquely by the URL
            // id: URL
            List(networkingManager.dataList.results, id: \.url) { item in
                Text(String(item.name.capitalized))
            }.navigationBarTitle(Text("Pokemońs")).navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
