//
//  MainMainViewInput.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

protocol MainViewInput: class {

    /**
        @author Matthew Krager
        Setup initial state of the view
    */

    func setupInitialState()
    func displayStations(stations: [Station])
}
