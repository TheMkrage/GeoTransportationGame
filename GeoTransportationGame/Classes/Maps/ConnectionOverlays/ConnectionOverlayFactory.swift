//
//  ConnectionOverlayFactory.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/29/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit

struct ConnectionOverlayFactory {
    static func create(connection: Connection) -> ConnectionOverlay {
        switch connection.type {
        case .busStation:
            return BusConnectionOverlay(connection: connection)
        case .trainStation:
            return TrainConnectionOverlay(connection: connection)
        case .airport:
            return AirportConnectionOverlay(connection: connection)
        }
    }

}
