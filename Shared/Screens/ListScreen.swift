//
//  ListScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI

struct ListScreen: View {
    @Binding public var username: String

    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(systemName: "checklist")
                    Text("Records")
                    NavigationLink(destination: RecordList(username: .constant("oopsie"))
                        .environmentObject(ModelData())) {
                    }
                }
                
                HStack {
                    Image(systemName: "scroll")
                    Text("Rules")
                    NavigationLink(destination: SampleView()) {
                    }
                }
                HStack {
                    Image(systemName: "building.columns")
                    Text("Organization")
                    NavigationLink(destination: SampleView()) {
                    }
                
                }
                HStack {
                    Image(systemName: "person.crop.rectangle.stack")
                    Text("Users")
                    NavigationLink(destination: UserList().environmentObject(ModelData())) {
                    }
                }

            }.navigationTitle("Home")
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen(username: .constant("banana"))
    }
}
