//
//  ContentView.swift
//  SwiftUI-Images
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            // Provide name of Image
            Image("butterfly")
                // Set image to Resizable
                .resizable()
                // Set Image Aspect Ratio
                .aspectRatio(contentMode: .fit)
                // Rounded Corners to Image
                .cornerRadius(20)
                // Padding in all directions
                .padding(.all)
                // Clip Image as Circle
                //.clipShape(Circle())
            
            Text("See it's a butterfly 🦋")
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
