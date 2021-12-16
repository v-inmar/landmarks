//
//  ContentView.swift
//  Landmarks
//
//  Created by Vinmar Tipay on 15/12/2021.
//

import SwiftUI

// Struct conforming to View protocol
// Shows and describe the layout of the app's contents
struct ContentView: View {
    var body: some View {
        Text("This is SwiftUi: Landmarks")
            .padding()
    }
}





// Handles with the preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark) // this inherits dark mode
        
        // Allows multiple previews to check for app's
        // visual with other modes
        ContentView()
            .preferredColorScheme(.light) // light mode
    }
}
