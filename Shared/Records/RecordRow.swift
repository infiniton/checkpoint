//
//  RecordRow.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import SwiftUI

struct RecordRow: View {
    var user: User
    var counter: Int
    var body: some View {
        
        let userRecordsArray = user.meetinglist.components(separatedBy: ",")
        let userRecordsTime = userRecordsArray[counter].components(separatedBy: "+")


        HStack{
            VStack(alignment: .leading){
            Text(userRecordsTime[0])
                .font(.title2)
                .bold()
            Text("Meeting ID: " + userRecordsTime[2])
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text(userRecordsTime[1])
        }
        
        

    }

    

}

struct RecordRow_Previews: PreviewProvider {
    static var users = ModelData().users

    static var previews: some View {
        RecordRow(user: users[0], counter: 0)
            .previewLayout(.fixed(width: 300, height: 70))

    }
}
