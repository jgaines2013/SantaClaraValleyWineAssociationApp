//
//  ThirdViewController.swift
//  THIS IS THE WINERIES PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
var wineriesRow = 0
class ThirdViewController: UIViewController, UITableViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(wineriesRow)
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listOfWineries.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")

        cell!.textLabel?.text = listOfWineries[indexPath.row].name
        cell!.detailTextLabel?.text = listOfWineries[indexPath.row].hours
        cell!.backgroundColor = UIColor.blackColor()
        cell!.textLabel?.textColor = UIColor.whiteColor()
        cell!.detailTextLabel?.textColor = UIColor.whiteColor()
        
        //let pict = listOfWineries[indexPath.row].picture!

//        //cell?.imageView?.contentMode = UIViewContentMode.ScaleToFill
//        //cell?.imageView?.clipsToBounds = true
        //cell?.imageView?.image = UIImage(named: pict)
        
        return cell!
    }
    
    
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath)->NSIndexPath?
    {
        wineriesRow = indexPath.row
        print(wineriesRow)
        return indexPath
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}