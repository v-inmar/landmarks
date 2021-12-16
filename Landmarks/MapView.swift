//
//  MapView.swift
//  Landmarks
//
//  Created by Vinmar Tipay on 16/12/2021.
//

import SwiftUI
import MapKit // Will be using for rendering map

struct MapView: View {
    // Makes the attribute a state that can be modified over time
    // Not ideal, should be switched to MVVM pattern if possible (TODO)
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region) // $ symbol allows binding
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
