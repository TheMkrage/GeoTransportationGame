//
//  StationAnnotationFactory.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 11/29/19.
//  Copyright © 2019 Matthew Krager. All rights reserved.
//

import UIKit

struct StationAnnotationFactory {
    static func create(station: Station) -> StationAnnotation {
        switch station.type {
        case .busStation:
            return BusStopAnnotation(station: station)
        case .trainStation:
            return TrainStationAnnotation(station: station)
        case .airport:
            return AirportAnnotation(station: station)
        }
    }
}
