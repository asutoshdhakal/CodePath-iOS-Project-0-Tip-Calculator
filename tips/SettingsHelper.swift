//
//  SettingsHelper.swift
//  tips
//
//  Created by Nathan Shayefar on 1/8/15.
//  Copyright (c) 2015 nathanshayefar. All rights reserved.
//

import UIKit

let defaultTipIndexKey = "default_tip_index"
let defaults = NSUserDefaults.standardUserDefaults()

class SettingsHelper {
    class func setDefaultTipIndex(tipIndex: Int) {
        defaults.setInteger(tipIndex, forKey: defaultTipIndexKey)
        defaults.synchronize()
    }
    
    class func getDefaultTipIndex() -> Int {
        return defaults.integerForKey(defaultTipIndexKey)
    }
}
