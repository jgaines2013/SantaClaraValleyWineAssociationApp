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

struct Associates
{
    var name: String!
    var phoneNumber: String?
    var address: String?
    var website: String?
}

struct Wineries
{
    var name: String!
    var hours: String!
    var phoneNumber: String!
    var address: String!
    var websiteOrEmail: String!
    var latitude: String!
    var longitude: String!
    var description: String!
}
var listOfAssociates = [String: Associates]()
var listOfWineries = [Wineries]()

class FirstViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readWineriesFile()
        print(listOfWineries.count)
        for (theWineryName) in listOfWineries
        {
            print("\(theWineryName.name) ")
        }
        readAssociatesFile()
        print(listOfAssociates.count + 1)
        for (theAssociationName, theAssociationObj) in listOfAssociates
        {
            print("\(theAssociationName) :  \(theAssociationObj.phoneNumber!)")
        }
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        let latitude:CLLocationDegrees = 37.2368473
        
        let longitude:CLLocationDegrees = -121.7964655
        
        let latDelta:CLLocationDegrees = 0.8
        
        let lonDelta:CLLocationDegrees = 0.8
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: true)
        self.map.showsUserLocation = true
        
        dropPins()
        
      
    }
    
    func readWineriesFile()
    {
        //Open and read from wineries file
        let path = NSBundle.mainBundle().pathForResource("wineries", ofType: "txt")
        var text=""
        do{
            text = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding) as String
            //print(text)
            
        }
        catch{
            print("error reading wineries file")
        }
        var arrayOfWineries = text.componentsSeparatedByString("$")
        
        for var i = 0; i < arrayOfWineries.count-1; i++
        {
            var eachWinery = arrayOfWineries[i].componentsSeparatedByString(";")
            var obj = Wineries()
            for var j = 0; j < eachWinery.count-1; j++
            {
                let name = eachWinery[0]
                let hours = eachWinery[1]
                let number = eachWinery[2]
                let address = eachWinery[3]
                let link =  eachWinery[4]
                let lat = eachWinery[5]
                let lon = eachWinery[6]
                let des = eachWinery[7]
                
                obj.name = name as String!
                obj.hours = hours
                obj.phoneNumber = number
                obj.address = address
                obj.websiteOrEmail = link
                obj.latitude = lat
                obj.longitude = lon
                obj.description = des
                
            }
            listOfWineries.append(obj)
        }
        
    }
    
    func readAssociatesFile()
    {
        //Open and read from associates file
        let path = NSBundle.mainBundle().pathForResource("associates", ofType: "txt")
        var text=""
        do{
            text = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding) as String
            //print(text)
            
        }
        catch{
            print("error reading associates file")
        }
        var arrayOfAssociates = text.componentsSeparatedByString("$")
        
        for var i = 0; i < arrayOfAssociates.count-1; i++
        {
            var eachAssociate = arrayOfAssociates[i].componentsSeparatedByString(";")
            for var j = 0; j < eachAssociate.count-1; j++
            {
                let name = eachAssociate[0]
                let number = eachAssociate[1]
                let address = eachAssociate[2]
                let link =  eachAssociate[3]
                var obj = Associates()
                obj.name = name
                obj.phoneNumber = number
                obj.address = address
                obj.website = link
                listOfAssociates[obj.name!] = obj
            }
        }

    }
    
    func dropPins()
    {
        struct annotate
        {
            let latitude : Double
            let longitude: Double
            let title : String?
        }
        var annotations:Array = [annotate]()
        
        for (theKey) in listOfWineries
        {
            let lat = theKey.latitude
            let lon = theKey.longitude
            let title = theKey.name as String!
            let annot = annotate(latitude: Double(lat!)!,longitude: Double(lon!)!,title: title)
            annotations.append(annot)
        }
        
        
        //Drop pins of wineries on the map
        for item in annotations
        {
            let pinCoordinate = CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude)
            let thePin = MKPointAnnotation()
            thePin.coordinate = pinCoordinate
            thePin.title = "\(item.title!)"
            map.addAnnotation(thePin)
        }

    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
  
        
   }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

