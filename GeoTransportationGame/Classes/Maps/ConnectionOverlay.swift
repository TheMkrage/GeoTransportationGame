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
    var coordinate: CLLocationCoordinate2D {
        return connection.station1.coordinate
    }
    var boundingMapRect: MKMapRect {
        return MKMapRect(coordinates: [
            connection.station1.coordinate,
            connection.station2.coordinate]
        )
    }
    var connection: Connection
    
    init(connection: Connection) {
        self.connection = connection
    }
}
