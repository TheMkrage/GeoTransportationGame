//
//  ConnectionOverlayRenderer.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/28/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import MapKit
import UIKit
import CoreGraphics

class ConnectionOverlayRenderer: MKOverlayPathRenderer {

    var connectionOverlay: ConnectionOverlay

    init(connectionOverlay: ConnectionOverlay) {
        self.connectionOverlay = connectionOverlay
        super.init(overlay: connectionOverlay)
    }

    override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext) {
        context.setStrokeColor(UIColor.black.cgColor)
        context.setLineWidth(50.0)
        context.addPath(self.path)
        context.strokePath()
        
//        let rect = self.rect(for: overlay.boundingMapRect)
//
//        print(mapRect)
//        print(zoomScale)
//        print(overlay.boundingMapRect)
//        print(rect)
//        print(self.path)
//        context.addRect(rect)
//        context.fill(rect)
    }

    override func createPath() {
        let path = CGMutablePath()
        let point1 = self.point(for: MKMapPoint(connectionOverlay.connection.station1.coordinate))
        let point2 = self.point(for: MKMapPoint(connectionOverlay.connection.station2.coordinate))
        path.move(to: point1)
        path.addLine(to: point2)
        self.path = path
    }
}
