//
//  Connection.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit
import CoreLocation

class Connection: Codable {
    var station1: Station
    var station2: Station
    
    var type: StationType
    var level: Int
    
    init(station1: Station, station2: Station, type: StationType, level: Int) {
        self.station1 = station1
        self.station2 = station2
        self.type = type
        self.level = level
    }
}
