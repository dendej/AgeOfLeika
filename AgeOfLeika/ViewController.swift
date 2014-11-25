//
//  ViewController.swift
//  AgeOfLeika
//
//  Created by Dendej Sawarnkatat on 11/25/14.
//  Copyright (c) 2014 Dendej Sawarnkatat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearLabel: UILabel!
    @IBOutlet weak var humanYearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func computeDogYearBtnPressed(sender: UIButton) {
        dogYearLabel.hidden = false
        dogYearLabel.text = "Dog years is \((humanYearTextField.text as NSString).doubleValue * 7.0)"
        humanYearTextField.resignFirstResponder()
    }
}

