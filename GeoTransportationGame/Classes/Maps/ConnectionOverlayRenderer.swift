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

    var connectionOveerlay: ConnectionOverlay

    init(connectionOverlay: ConnectionOverlay) {
        self.connectionOveerlay = connectionOverlay
        super.init(overlay: connectionOverlay)
    }

    override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext) {

    }

    override func createPath() {
        //var path =
    }
}
