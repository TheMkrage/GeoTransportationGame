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
}
