//
//  UserList.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import SwiftUI

struct UserList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false



    var body: some View {
        NavigationView {
            List {

                // for each user in the modelData.users array, create a row
                ForEach(modelData.users) { user in
                    if !self.showFavoritesOnly || user.isFavorite {
                        NavigationLink(destination: UserDetail(user: user)) {
                            UserRow(user: user)
                        }
                    }
                }

            }
            .navigationTitle("Users")
            
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
            .environmentObject(ModelData())
    }
}
        
