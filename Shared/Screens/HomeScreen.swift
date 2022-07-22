//
//  HomeScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct HomeScreen: View {
    @Binding public var username: String
    var body: some View {
        
        TabView {
            ListScreen(username: $username)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
                
            QRScreen(username: $username)
                .tabItem{
                    Label("Scan", systemImage: "qrcode")
                }
            
            SettingsScreen()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    @State private var name = "oopsie"
    static var previews: some View {
        HomeScreen(username: .constant("bananas"))
    }
}
