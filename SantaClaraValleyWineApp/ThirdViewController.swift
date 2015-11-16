//
//  ThirdViewController.swift
//  THIS IS THE WINERIES PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
var rowCounter = 0
class ThirdViewController: UIViewController, UITableViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(rowCounter)
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listOfWineries.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")

        cell!.textLabel?.text = listOfWineries[indexPath.row].name
        cell!.detailTextLabel?.text = listOfWineries[indexPath.row].address
        cell!.backgroundColor = UIColor.blackColor()
        cell!.textLabel?.textColor = UIColor.whiteColor()
        cell!.detailTextLabel?.textColor = UIColor.whiteColor()
        
        return cell!
    }
    
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath)->NSIndexPath?
    {
        rowCounter = indexPath.row
        print(rowCounter)
        return indexPath
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}