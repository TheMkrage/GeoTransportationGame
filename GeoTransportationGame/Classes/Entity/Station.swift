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
    
    var annotationImageName: String {
        switch self {
        case .busStation:
            return "bus-stop-icon"
        case .trainStation:
            return ""
        case .airport:
            return ""
        }
    }
}

class Station: Codable {
    var id: Int
    var ownerName: String
    var ownerId: Int
    var stationName: String
    var type: StationType
    
    var lat: CLLocationDegrees
    var long: CLLocationDegrees
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: lat, longitude: long)
    }
    
    init(id: Int, ownerName: String, ownerId: Int, stationName: String, type: StationType, lat: CLLocationDegrees, long: CLLocationDegrees) {
        self.id = id
        self.ownerName = ownerName
        self.ownerId = ownerId
        self.stationName = stationName
        self.type = type
        self.lat = lat
        self.long = long
    }
}
