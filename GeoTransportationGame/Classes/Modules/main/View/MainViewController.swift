//
//  MainMainViewController.swift
//  GeoTransportationGame
//
//  Created by Matthew Krager on 27/11/2019.
//  Copyright © 2019 Krager. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MainViewController: UIViewController, MainViewInput {
    var output: MainViewOutput!
    var map = MapView()
    let locationManager = CLLocationManager()

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
        
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        map.delegate = self
    }
    
    func displayStations(stations: [Station]) {
        var annotations = [StationAnnotation]()
        for s in stations {
            let a = StationAnnotation(type: s.type)
            a.coordinate = CLLocationCoordinate2D(latitude: s.lat, longitude: s.long)
            annotations.append(a)
        }
        map.addAnnotations(annotations)
    }
    
    func displayConnections(connections: [Connection]) {
        var overlays = [MKOverlay]()
        for c in connections {
            let overlay = ConnectionOverlay(connection: c)
            overlays.append(overlay)
        }
        map.addOverlays(overlays, level: .aboveLabels)
    }
}


extension MainViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if let tileOverlay = overlay as? MKTileOverlay {
            return MKTileOverlayRenderer(tileOverlay: tileOverlay)
        } else if let connectionOverlay = overlay as? ConnectionOverlay {
            return ConnectionOverlayRenderer(connectionOverlay: connectionOverlay)
        } else {
            return MKOverlayRenderer(overlay: overlay)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let reuseIdentifier = "pin"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)

        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }

        let stationAnnotation = annotation as! StationAnnotation
        annotationView?.image = UIImage(named: stationAnnotation.type.annotationImageName)
        annotationView?.transform = CGAffineTransform(scaleX: 0.4, y: 0.4)

        return annotationView
    }
}


extension MainViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: locValue, span: span)
        map.setRegion(region, animated: true)
    }
}
