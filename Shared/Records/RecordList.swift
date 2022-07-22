//
//  RecordList.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import SwiftUI

struct RecordList: View {
    @EnvironmentObject var modelData: ModelData
    @Binding public var username: String
    var counter = 2
    
    var body: some View {
        List {
            ForEach(modelData.users) { user in
                if user.username == self.username {
                    let userRecordsArray = user.meetinglist.components(separatedBy: ",")
                    
                    ForEach(Array(userRecordsArray.enumerated()), id:\.offset) {index, record in
                        RecordRow(user: user, counter: index)
                            .environmentObject(modelData)
                    }
                    }
                    
                }
            }
        }
    }
    
    func getMeetings(user: User) -> Array<String> {
        let userRecordsArray = user.meetinglist.components(separatedBy: ",")
        return userRecordsArray
    }


struct RecordList_Previews: PreviewProvider {
    static var previews: some View {
        RecordList(username: .constant("oopsie"))
            .environmentObject(ModelData())
    }
}
