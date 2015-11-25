//
//  FifthViewController.swift
//  THIS IS THE ASSOCIATES PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/17/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     

    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print(listOfAssociates.count)
        return listOfAssociates.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("associateCell")
        
        cell!.textLabel?.text = listOfAssociates[indexPath.row].name
        cell!.detailTextLabel?.text = listOfAssociates[indexPath.row].address
        cell!.backgroundColor = UIColor.lightGrayColor()
        cell!.textLabel?.textColor = UIColor.whiteColor()
        cell!.detailTextLabel?.textColor = UIColor.whiteColor()
        
        return cell!
    }
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath)->NSIndexPath?
    {
        //rowCounter = indexPath.row
        //print(rowCounter)
        return indexPath
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}