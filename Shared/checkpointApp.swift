//
//  checkpointApp.swift
//  Shared
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

@main
struct checkpointApp: App {
    @StateObject var authentication = Authentication()
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView()
                    .environmentObject(authentication)
            } else {
                LoginScreen()
                    .environmentObject(authentication)
            }
        }
    }
}
