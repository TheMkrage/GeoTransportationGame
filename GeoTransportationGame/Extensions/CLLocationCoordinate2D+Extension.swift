//
//  CLLocationCoordinate2D+Extension.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import CoreLocation
import CoreGraphics

extension CLLocationCoordinate2D {
    var cgPoint: CGPoint {
        return CGPoint(x: self.latitude, y: self.longitude)
    }
    
    func translate(deltaLat: CLLocationDegrees, deltaLong: CLLocationDegrees) -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude + deltaLat, longitude: longitude + deltaLong)
    }
}
