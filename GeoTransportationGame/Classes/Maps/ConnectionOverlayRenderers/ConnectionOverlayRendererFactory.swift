//
//  ConnectionOverlayFactory.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/29/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit

struct ConnectionOverlayRendererFactory {
    static func create(connectionOverlay: ConnectionOverlay) -> ConnectionOverlayRenderer {
        switch connectionOverlay.connection.type {
        case .busStation:
            return BusConnectionOverlayRenderer(connectionOverlay: connectionOverlay)
        case .trainStation:
            return BusConnectionOverlayRenderer(connectionOverlay: connectionOverlay)
        case .airport:
            return BusConnectionOverlayRenderer(connectionOverlay: connectionOverlay)
        }
    }

}
