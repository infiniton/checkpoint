//
//  UserRow.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import SwiftUI

struct UserRow: View {
    var user: User

    var body: some View {
        HStack {
            Text(user.name)

            Spacer()
            
            }

            
        }
    }


struct UserRow_Previews: PreviewProvider {
    static var users = ModelData().users

    static var previews: some View {
        Group {
            UserRow(user: users[0])
            UserRow(user: users[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

