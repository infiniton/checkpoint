//
//  HomeScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct HomeScreen: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
    var body: some View {

        TabView {
            ListScreen()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
                
            QRScreen()
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
    static var previews: some View {
        HomeScreen()
    }
}
