//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Vinmar Tipay on 15/12/2021.
//

import SwiftUI // import swiftui library. SwiftUI mainly deals with presentation layer

// entry point
@main // attribute that identifies the app's entry point
struct LandmarksApp: App { // LandmarksApp struct conforms to App protocol
    var body: some Scene { // Computed property (calculated each time body is accessed)
        WindowGroup { // single return value allows the omittance of keyword 'return'
            ContentView()
        }
    }
}
