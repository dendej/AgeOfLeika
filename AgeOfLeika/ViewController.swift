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
        dogYearLabel.text = "Dog years are \((humanYearTextField.text as NSString).doubleValue * 7.0)"
        humanYearTextField.resignFirstResponder()
    }
    @IBAction func convertToRealDogYearBtnPressed(sender: UIButton) {
        var humanYears = (humanYearTextField.text as NSString).doubleValue
        var dogYears = 0.0
        if humanYears > 2 {
            dogYears += (humanYears - 2) * 4;
            humanYears = 2;
        }
        dogYears += humanYears * 10.5
        
        dogYearLabel.hidden = false
        dogYearLabel.text = "Dog years are " +
            "\(dogYears)"
        humanYearTextField.resignFirstResponder()
    }
}

