import UIKit
import PlaygroundSupport
import SwiftUI

// UI Code
struct ContentView: View {
    var body: some View {
        Text("Hello World..")
            .font(.title)
            .foregroundColor(.green)
    }
}

// Create a Content View
let contentView = ContentView()

// Show the Content View in the Playground for Preview
PlaygroundPage.current.liveView = UIHostingController(rootView: contentView)
