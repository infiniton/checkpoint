//
//  LoginScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/2022.
//

import SwiftUI

struct SignupScreen: View {
    @State var username = ""
    @State private var password = ""
    @State private var repeatpassword = ""

    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.purple
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.525)
                    .foregroundColor(.white.opacity(0.3))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white.opacity(0.45))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)

                VStack {
                    Text("Sign up for an account")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Repeat Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Button("Continue") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: HomeScreen(username: $username), isActive: $showingLoginScreen) {
                    }
                    
                    Button("Log In") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(Color.purple)
                    .padding()
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if password.lowercased() == repeatpassword.lowercased() {
            showingLoginScreen = true
        }
    }
}

struct SignupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignupScreen()
    }
}
