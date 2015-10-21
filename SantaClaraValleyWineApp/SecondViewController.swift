//
//  SecondViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/6/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.scrollRangeToVisible(NSRange(location: 0,length: 0))
        
        
    }
    @IBOutlet var textView: UITextView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

