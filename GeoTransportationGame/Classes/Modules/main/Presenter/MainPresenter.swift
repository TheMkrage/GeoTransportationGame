//
//  MainMainPresenter.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

class MainPresenter: MainModuleInput, MainViewOutput, MainInteractorOutput {

    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
    var router: MainRouterInput!

    func viewIsReady() {
        var stations = [Station]()
        stations.append(Station(id: 0, ownerName: "MKrager", ownerId: 0, stationName: "Krager Station", type: .busStation, lat: 33.699910, long: -118.023030))
        stations.append(Station(id: 1, ownerName: "MKrager", ownerId: 0, stationName: "Krager Station 2", type: .busStation, lat: 33.6990, long: -118.023073))
        view.displayStations(stations: stations)
        
        let connections = [Connection(station1: stations.first!, station2: stations.last!, type: .busStation, level: 1)]
        view.displayConnections(connections: connections)
    }
}
