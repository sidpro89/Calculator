//
//  ViewController.swift
//  Calculator
//
//  Created by Tao on 2016-01-30.
//  Copyright © 2016 esr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var startTapping = false
    
    @IBAction func numberTapping(sender: UIButton) {
        if startTapping {
            resultLabel.text?.appendContentsOf(sender.currentTitle!)
        } else {
            resultLabel.text = sender.currentTitle
            startTapping = true
        }
    }
    
    @IBAction func clearButton(sender: UIButton) {
        resultLabel.text = "0"
        startTapping = false
    }
    
    @IBAction func operation(sender: UIButton) {
        
    }
}

