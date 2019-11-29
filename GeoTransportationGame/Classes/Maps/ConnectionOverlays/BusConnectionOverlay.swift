//
//  BusStopOverlay.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/29/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit
import MapKit

class BusConnectionOverlay: ConnectionOverlay {
    override var coordinate: CLLocationCoordinate2D {
        return connection.station1.coordinate
    }
    override var boundingMapRect: MKMapRect {
        return MKMapRect(coordinates: [
            CLLocationCoordinate2D(latitude: connection.station1.coordinate.latitude, longitude: connection.station1.coordinate.longitude),
            CLLocationCoordinate2D(latitude: connection.station2.coordinate.latitude, longitude: connection.station2.coordinate.longitude)]
        )
    }
}
