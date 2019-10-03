//
//  ContentView.swift
//  SwiftUI-Intro
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    // Vertical Stack View
//    var body: some View {
//        VStack {
//            // Text
//            Text("Vertical Stack")
//                .font(.largeTitle)
//                .foregroundColor(.blue)
//            Text("First Line.")
//                .font(.title)
//                .foregroundColor(.green)
//            Text("Second Line.")
//                .font(.title)
//                .foregroundColor(.red)
//        }
//    }
    
    // Horizontal Stack View
//    var body: some View {
//        HStack {
//            Text("Horizontal Stack")
//                .font(.title)
//                .foregroundColor(.blue)
//            Text("First Line.")
//                .font(.title)
//                .foregroundColor(.green)
//            Text("Second Line.")
//                .font(.title)
//                .foregroundColor(.red)
//        }
//    }
    
    
    // Z Stack View: Stacking on top of each other
//    var body: some View {
//        ZStack {
//            Text("Z Stack")
//                .font(.title)
//                .foregroundColor(.blue)
//            Text("First Line.")
//                .font(.title)
//                .foregroundColor(.green)
//            Text("Second Line.")
//                .font(.title)
//                .foregroundColor(.red)
//        }
//    }
    
    // Vertical Stack View with Spacer & Padding
    var body: some View {
        // Center Alignment
        VStack(alignment: .center) {
            // Text
            Text("Vertical Stack")
                .font(.largeTitle)
                .foregroundColor(.blue)
            // Spacer
            //Spacer()
            Text("First Line.")
                .font(.title)
                .foregroundColor(.green)
            Text("Second Line.")
                .font(.title)
                .foregroundColor(.red)
            
            HStack {
                // Text
                Text("Horizontal Stack")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                //Spacer()
                Text("Left Side.")
                    .font(.title)
                    .foregroundColor(.green)
                    .padding(.all)
                Text("Right Side.")
                    .font(.title)
                    .foregroundColor(.red)
                    // Padding on All sides of text
                    .padding(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
