//
//  CircleImage.swift
//  Landmarks
//
//  Created by Vinmar Tipay on 16/12/2021.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        // Image View passing the name of the file
        Image("turtlerock")
            .clipShape(Circle()) // Circle type is a Shape
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
            .preferredColorScheme(.dark)
        
        CircleImage()
            .preferredColorScheme(.light)
    }
}
