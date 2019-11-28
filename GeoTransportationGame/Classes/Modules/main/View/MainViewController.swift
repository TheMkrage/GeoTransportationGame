//
//  MainMainViewController.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

import UIKit
import MapKit

class MainViewController: UIViewController, MainViewInput {

    var output: MainViewOutput!
    var map: MKMapView = MKMapView()

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: MainViewInput
    func setupInitialState() {
        view.backgroundColor = .white
        view.addSubview(map)
        setupConstraints()
    }
}
