//
//  ContentView.swift
//  Shared
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeScreen(username: .constant("bananas"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
