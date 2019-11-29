//
//  ConnectionAnnotation.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import MapKit

class StationAnnotation: MKPointAnnotation {
    var type: StationType
    
    init(type: StationType) {
        self.type = type
    }
}
