//
//  ConnectionOverlay.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit
import MapKit

class ConnectionOverlay: NSObject, MKOverlay {
    var coordinate: CLLocationCoordinate2D
    
    var boundingMapRect: MKMapRect
    
    init(connection: Connection) {
        self.boundingMapRect = MKMapRect(coordinates: [
            connection.station1.coordinate,
            connection.station2.coordinate]
        )
        self.coordinate = connection.station1.coordinate
    }
}
