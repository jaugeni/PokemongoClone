//
//  MapVC.swift
//  Pokemon
//
//  Created by YAUHENI IVANIUK on 11/7/16.
//  Copyright © 2016 be connected club. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var manager = CLLocationManager()
    
    var updateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager.delegate = self
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            print("Redy to go!")
            mapView.showsUserLocation = true
            
            manager.startUpdatingLocation()
            
        } else {
            manager.requestWhenInUseAuthorization()
        }
        
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if updateCount < 3 {
            let region = MKCoordinateRegionMakeWithDistance(manager.location!.coordinate, 400, 400)
            mapView.setRegion(region, animated: false)
            updateCount += 1
        } else {
            manager.stopUpdatingLocation()
        }
    }
    
    @IBAction func centerBtn(_ sender: Any) {
        
        if let coord = manager.location?.coordinate {
            let region = MKCoordinateRegionMakeWithDistance(coord, 400, 400)
            mapView.setRegion(region, animated: true)
            
        }
    }
    
}

