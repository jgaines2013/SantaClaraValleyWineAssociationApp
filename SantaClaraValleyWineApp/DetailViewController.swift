//
//  DetailViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 11/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    @IBOutlet var navigationBar: UINavigationBar!
    @IBOutlet var hoursLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    @IBOutlet var websiteLabel: UILabel!
    @IBOutlet var DescriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = listOfWineries[rowCounter].name
        hoursLabel.text = "Hours of Operations: " + listOfWineries[rowCounter].hours
        addressLabel.text = "Address: " + listOfWineries[rowCounter].address
        websiteLabel.text = listOfWineries[rowCounter].websiteOrEmail
      
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
