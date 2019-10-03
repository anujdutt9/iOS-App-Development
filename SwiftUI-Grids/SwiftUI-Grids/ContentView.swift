//
//  ContentView.swift
//  SwiftUI-Grids
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//
import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    
    var body: some View {
        let chunkedDishes = dishes.chunked(into: 2)
        
        return List {
            // Rows
            ForEach(0..<chunkedDishes.count) { idx in
                // Horizontal Stack View
                HStack {
                    // Columns
                    ForEach(chunkedDishes[idx]) { dish in
                        Image(dish.imageURL)
                        .resizable()
                        .scaledToFit()
                        //.cornerRadius(20)
                    }
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
