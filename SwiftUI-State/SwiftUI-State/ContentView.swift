//
//  ContentView.swift
//  SwiftUI-State-Binding
//
//  Created by Anuj Dutt on 10/1/19.
//  Copyright © 2019 Anuj Dutt. All rights reserved.
//

import SwiftUI

// @State Variable for changing Text on Button Press Example
//struct ContentView: View {
//    // State String Variable
//    @State var name: String = "John"
//
//    var body: some View {
//        // Vwertical Stack
//        VStack{
//            // Text Label
//            Text(name)
//                .font(.largeTitle)
//
//            // Button with Action to take onClick
//            // To change the name on button click, we need to define the variable "name" as @State Variable.
//            // On pressing the button, it will change the name to "Mary" and render the whole body again.
//            // Without using the @State Variable, you cannot access the variable "name" in here.
//            Button(action: {
//                self.name = "Mary"
//            }) {
//                Text("Change Name")
//            }
//        }
//    }
//}

// Rendering the List again on adding a new item to the List.
struct ContentView: View {
    @State var tasks = [Task]()
    
    private func addTask() {
        self.tasks.append(Task(name: "This is task number xx."))
    }
    
    var body: some View {
        List {
            Button(action: addTask) {
                Text("Add Task")
            }
            
            ForEach(tasks) { task in
                Text(task.name)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
