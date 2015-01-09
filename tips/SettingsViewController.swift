//
//  SettingsViewController.swift
//  tips
//
//  Created by Nathan Shayefar on 1/8/15.
//  Copyright (c) 2015 nathanshayefar. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    let defaultTipIndexKey = "default_tip_index_key"
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This is redundant with the code in ViewController; move to helper class
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipIndex = defaults.integerForKey(defaultTipIndexKey)
        defaultTipControl.selectedSegmentIndex = defaultTipIndex
    }
    
    @IBAction func onValueChanged(sender: AnyObject) {
        var defaultTipIndex = defaultTipControl.selectedSegmentIndex
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(defaultTipIndex, forKey: defaultTipIndexKey)
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
