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
    var body: some View { // can only return a single view
        VStack {
            // The View that shows the map
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top) // this extends the mapview to the top egde of the screen
            
            // The View that show the image
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) { // by default, stack's content are centered along the axis
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
            // View Modifiers (.font(), .padding(), etc )
            // that changes the view's (Text in this case) properties
            // by wrapping the view and returns a newly modified view
    }
}





// Handles with the preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light) // this inherits dark mode
        
        // Allows multiple previews to check for app's
        // visual with other modes
        ContentView()
            .preferredColorScheme(.dark) // light mode
    }
}
