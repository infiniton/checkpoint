//
//  UsersDetail.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import SwiftUI

struct UserDetail: View {
    @EnvironmentObject var modelData: ModelData
    var user: User

    var userIndex: Int {
        modelData.users.firstIndex(where: { $0.id == user.id })!
    }

    var body: some View {
        ScrollView {
            /*MapView(coordinate: user.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)*/

            VStack(alignment: .leading) {
                HStack {
                    Text(user.name)
                        .font(.title)
                        .bold()
                }

                HStack {
                    Text(user.phone)
                    Spacer()
                    Text(user.organization_name)
                }
                .font(.subheadline)
                
                Divider()

                Text("About \(user.name)")
                    .font(.title2)
                Text("\nIn an organization owned by " + user.organization_owner)
                Text("\nOrganization phone number: " + user.organization_phone)
                Text("\nOrganization location: \n" + user.organization_address)
            }
            .padding()
        }
        .navigationTitle(user.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        UserDetail(user: modelData.users[0])
            .environmentObject(modelData)
    }
}

