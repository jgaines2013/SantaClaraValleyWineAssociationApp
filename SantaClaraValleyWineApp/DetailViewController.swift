//
//  DetailViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 11/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
import MapKit
class DetailViewController: UIViewController, MKMapViewDelegate {

    
    
    @IBOutlet var navigationBar: UINavigationBar!
    @IBOutlet var textView: UITextView!
    @IBOutlet var wineryMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = listOfWineries[rowCounter].name
        textView.editable = false
        textView.dataDetectorTypes = UIDataDetectorTypes.All
        
        textView.text = "Hours of Operations: " + listOfWineries[rowCounter].hours + "\n\nAddress: " + listOfWineries[rowCounter].address + "\n\nWebsite: " + listOfWineries[rowCounter].websiteOrEmail + "\n\nPhone Number: " + listOfWineries[rowCounter].phoneNumber + "\n\nDescription: " + listOfWineries[rowCounter].description

        
        //Map setup
        let latitude: CLLocationDegrees = Double(listOfWineries[rowCounter].latitude)!
        let longitude: CLLocationDegrees = Double(listOfWineries[rowCounter].longitude)!
        let latDelta: CLLocationDegrees = 0.01
        let lonDelta: CLLocationDegrees = 0.01
        let span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        wineryMap.setRegion(region, animated: true)
        
        //annotation on the map
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = listOfWineries[rowCounter].name
        wineryMap.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
