//
//  FirstViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/6/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        
        let latitude:CLLocationDegrees = 37.3382
        
        let longitude:CLLocationDegrees = -121.8863
        
        let latDelta:CLLocationDegrees = 0.8
        
        let lonDelta:CLLocationDegrees = 0.8
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        self.map.showsUserLocation = true
        
        //Drop pins of wineries on the map
        let AverFamilyVineyards = CLLocationCoordinate2D(latitude: 37.052714, longitude: -121.651230)
        let AverFamilyVineyardsPin = MKPointAnnotation();
        AverFamilyVineyardsPin.coordinate = AverFamilyVineyards
        AverFamilyVineyardsPin.title = "Aver Family Vineyards"
        map.addAnnotation(AverFamilyVineyardsPin)
        
        
        
      
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //let userLocation = locations.last
        
        //let center = CLLocationCoordinate2D(latitude: userLocation!.coordinate.latitude, longitude: userLocation!.coordinate.longitude)
        
        //let region = MKCoordinateRegion(center: center, span:MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
        //self.map.setRegion(region, animated: true)
        
        //self.locationManager.startUpdatingLocation()
        
        //let latitude = userLocation.coordinate.latitude
        //let longitude = userLocation.coordinate.longitude
        
        //let latDelta:CLLocationDegrees = 0.5
        
        //let lonDelta:CLLocationDegrees = 0.5
        
        //let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        //let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        //let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        //self.map.setRegion(region, animated: true)
        
        //let annotation = MKPointAnnotation()
        
        //annotation.coordinate = location
        //annotation.title = "Current Location"
        
        //self.map.addAnnotation(annotation)
        
        
        
        
   }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

