//
//  SettingsScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        VStack {
        Text("Settings")
            Button(action: logout, label: {
                Text("Log Out")
                    .bold()
            })
            .foregroundColor(.red)
            .frame(width: 300, height: 50)
            .background(Color(UIColor.systemGray4))
            .cornerRadius(10)
        }
    }
    
    func logout() {
        if let window = UIApplication.shared.windows.first {
            window.rootViewController = UIHostingController(rootView: LoginScreen())
            window.makeKeyAndVisible()
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
