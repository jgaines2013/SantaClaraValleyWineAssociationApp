//
//  FifthViewController.swift
//  THIS IS THE SEARCH PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/17/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.editable = false

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}