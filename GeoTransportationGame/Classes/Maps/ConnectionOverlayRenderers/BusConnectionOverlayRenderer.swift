//
//  BusOverlayRenderer.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/29/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit
import MapKit

class BusConnectionOverlayRenderer: ConnectionOverlayRenderer {
    override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext) {
        context.setStrokeColor(UIColor.black.cgColor)
        context.setLineWidth(50.0)
        context.addPath(self.path)
        context.strokePath()
    }

    override func createPath() {
        let path = CGMutablePath()
        
        let point1 = self.point(for: MKMapPoint(connectionOverlay.connection.station1.coordinate.translate(deltaLat: 0, deltaLong: 0.0001)))
        let point2 = self.point(for: MKMapPoint(connectionOverlay.connection.station2.coordinate.translate(deltaLat: 0, deltaLong: 0.0001)))
        path.move(to: point1)
        path.addLine(to: point2)
        self.path = path
    }
}
