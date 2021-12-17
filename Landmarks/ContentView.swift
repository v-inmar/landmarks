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


// ---- Check Your Understanding ---- //



/*
 Question 1 of 4
 When creating a custom SwiftUI view, where do you declare the view's layout?
 
 Answer:
 In the body property
 
 Comment:
 Custom views implement the body property, which is a requirement of the View protocol
 */






/*
 Question 2 of 4
 Which layout renders from the following view code?
 
 var body: some View {
     HStack {
         CircleImage()
         VStack(alignment: .leading) {
             Text("Turtle Rock")
                 .font(.title)
             Text("Joshua Tree National Park")
         }
     }
 }
 
 Answer:
 3rd option
 The Image is to the left of the texts
 
 Comment:
 The nested horizontal and vertical stacks arrange the image to the left of the two text views.
 */






/*
 Question 3 of 4
 Which of these is a correct way to return three views from a custom view’s body property?
 
 Option 1:
 VStack {
    Text("Turtle Rock")
       .font(.title)
    Divider()
    Text("Joshua Tree National Park")
 }
 
 
 Option 2:
 [
     Text("Turtle Rock").font(.title),
     Divider(),
     Text("Joshua Tree National Park")
 ]
 
 
 Option 3:
 Text("Turtle Rock")
     + Divider()
     + Text("Joshua Tree National Park")
 
 Answer:
 1st option
 body property can, at most, return single view. Stacking the views allows multiple views to be displayed
 
 Comment:
 You can use a stack to return multiple views from a body property.
 */






/*
 Question 4 of 4
 Which is the correct way to use modifier methods to configure a view?
 
 Option 1:
 var text = Text("Hello world!")
 text.font(.title)
 text.foregroundColor(.purple)
 return text
 
 
 Option 2:
 var text = Text("Hello world!")
 text.font = .title
 text.foregroundColor = .purple
 return text
 
 
 Option 3:
 Text("Hello world!")
    .font(.title)
    .foregroundColor(.purple)
 
 
 Answer:
 3rd option
 
 Comment:
 A modifier returns a view that applies a new behavior or visual change. You can chain multiple modifiers to achieve the effects you need.
 */
