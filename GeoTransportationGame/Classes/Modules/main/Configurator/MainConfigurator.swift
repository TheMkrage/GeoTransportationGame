//
//  MainMainConfigurator.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

import UIKit

class MainModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? MainViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MainViewController) {

        let router = MainRouter()

        let presenter = MainPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MainInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
        
        presenter.view.setupInitialState()
    }

}
