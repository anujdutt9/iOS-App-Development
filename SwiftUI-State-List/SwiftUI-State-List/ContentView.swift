//
//  ContentView.swift
//  SwiftUI-State-List
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Get all Dishes
    let dishes = Dish.all()
    // Private State Variable telling if dish is spicy or not
    @State private var isSpicy = false
    
    var body: some View {
        // List View
        List {
            // Toggle Button
            // If Toggle is On, We need to see only spicy dishes
            // Render the body again as isSpicy is a State Variable
            Toggle(isOn: $isSpicy){
                Text("Spicy Dishes")
                    .font(.title)
            }
            // For Loop
            // If the dish is spicy, change the State Variable above to True
            ForEach(dishes.filter {$0.isSpicy == self.isSpicy}) {dish in
                // Horizontal Stack Images with Names
                HStack {
                    // Dish Images
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .cornerRadius(20)
                    // Dish Names
                    Text(dish.name)
                        .font(.title)
                        .lineLimit(nil)
                    // Align Spicy Icon to Right
                    Spacer()
                    
                    if (dish.isSpicy){
                        // Spicy Dish Icon
                        Image("spicy")
                        .resizable()
                        .frame(width: 35, height: 35)
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
