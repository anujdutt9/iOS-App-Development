//
//  HikeDetail.swift
//  Hiking
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import Foundation
import SwiftUI

// Hike Details Struct
struct HikeDetail: View{
    let hike: HikeData
    // State of Image insode View
    @State var zoomed = false
    
    var body: some View{
        // Vertical Stack View
        VStack(alignment: .center) {
            // Hike Image
            Image(hike.hikeImageURL)
                // Image is resizable
                .resizable()
                // Image's aspect ratio changes on clicking on image
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                // toggle zoomed variable value on tap gesture on the Image
                // animate with tap on Image
                .onTapGesture {
                        self.zoomed.toggle()
                }.animation(.easeInOut)
            // Hike Image Text
            Text(hike.hikeName)
                .font(.title)
        }.navigationBarTitle(Text(hike.hikeName), displayMode: .inline)
    }
}

