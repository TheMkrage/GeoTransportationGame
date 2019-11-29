//
//  ConnectionAnnotation.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import MapKit

class StationAnnotation: MKPointAnnotation {
    var station: Station
    
    init(station: Station) {
        self.station = station
        self.coordinate = station.coordinate
    }
}
