//
//  ContentView.swift
//  SwiftUI-Dictionaries
//
//  Created by Anuj Dutt on 10/4/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // Sample Dictionary
    let scoreList: [String: Int] = ["Score-1": 30, "Score-2": 45, "Score-3": 10]
    
    var body: some View {
        // Get Dictionary Keys
        let keys = scoreList.map{$0.key}
        // Get Dictionary Values
        let values = scoreList.map{$0.value}
        // Return a list with horizontally stacked Keys and Values
        return List(){
                   ForEach(keys.indices) { idx in
                       HStack{
                           Text("\(keys[idx])")
                               .onTapGesture {
                                   print("ID: \(idx)")
                           }
                           Spacer()
                           Text("\(values[idx])")
                               .onTapGesture {
                                   print("ID: \(idx)")
                           }
                       }
                   }
        }.navigationBarTitle("Match Score List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
