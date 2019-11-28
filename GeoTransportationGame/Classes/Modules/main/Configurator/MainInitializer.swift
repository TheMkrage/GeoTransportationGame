//
//  MainMainInitializer.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

import UIKit

class MainModuleInitializer: NSObject {

    var mainViewController = MainViewController()

    override init() {
        let configurator = MainModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: mainViewController)
    }

}
