//
//  SecondViewController.swift
//  THIS IS THE ABOUT US PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/6/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.scrollRangeToVisible(NSMakeRange(0,0))
        textView.setContentOffset(CGPointZero, animated: false)
        self.automaticallyAdjustsScrollViewInsets = false
    }
    @IBOutlet var textView: UITextView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

