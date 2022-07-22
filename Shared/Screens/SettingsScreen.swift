//
//  SettingsScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var authentication: Authentication

    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
                .ignoresSafeArea()
            VStack {
                Text("Settings")
                        .font(.largeTitle)
                        .bold()
                    Button(action: signout, label: {Text("Log Out").bold()})
                    .foregroundColor(.red)
                    .frame(width: 300, height: 50)
                    .background(Color(UIColor.systemGray4))
                    .cornerRadius(10)
            }
        }
    }
    
    func signout() {
        authentication.updateValidation(success: false)
    }
    
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
