//
//  ViewController.swift
//  tips
//
//  Created by Nathan Shayefar on 1/6/15.
//  Copyright (c) 2015 nathanshayefar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        tipControl.selectedSegmentIndex = SettingsHelper.getDefaultTipIndex()
        onEditingChanged(tipControl)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        if let lastBillAmount = SettingsHelper.getLastBillAmount() {
            billField.text = lastBillAmount
        }
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let billAmountString = billField.text as NSString
        SettingsHelper.setLastBillAmount(billAmountString)
        
        let tipPercentages = [0.18, 0.20, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = billAmountString.doubleValue
        let tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

