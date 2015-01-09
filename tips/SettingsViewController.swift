//
//  SettingsViewController.swift
//  tips
//
//  Created by Nathan Shayefar on 1/8/15.
//  Copyright (c) 2015 nathanshayefar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaultTipControl.selectedSegmentIndex = SettingsHelper.getDefaultTipIndex()
    }
    
    @IBAction func onValueChanged(sender: AnyObject) {
        SettingsHelper.setDefaultTipIndex(defaultTipControl.selectedSegmentIndex)
    }
}
