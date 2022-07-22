//
//  User.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/21/22.
//

import Foundation
import CoreLocation
import SwiftUI

struct User: Hashable, Codable, Identifiable {
    var username: String
    var id: Int
    var name: String
    var email: String
    var phone: String
    var organization_name: String
    var organization_uuid: String
    var organization_address: String
    var organization_owner: String
    var organization_phone: String
    var organization_website: String

    var meetinglist: String
    var isFavorite: Bool
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

}



