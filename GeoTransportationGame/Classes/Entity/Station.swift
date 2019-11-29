//
//  Station.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit
import CoreLocation

enum StationType: String, Codable {
    case busStation, trainStation , airport
}

class Station: Codable {
    var id: Int
    var ownerName: String
    var ownerId: Int
    var stationName: String
    var type: StationType
    
    var lat: CLLocationDegrees
    var long: CLLocationDegrees
}
