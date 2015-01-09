//
//  SettingsHelper.swift
//  tips
//
//  Created by Nathan Shayefar on 1/8/15.
//  Copyright (c) 2015 nathanshayefar. All rights reserved.
//

import UIKit

class SettingsHelper {
    // Use a struct with static fields as to not the pollute the global namespace
    struct Constants {
        static let defaultTipIndexKey = "default_tip_index"
        
        static let defaults = NSUserDefaults.standardUserDefaults()
    }
    
    class func setDefaultTipIndex(tipIndex: Int) {
        Constants.defaults.setInteger(tipIndex, forKey: Constants.defaultTipIndexKey)
        Constants.defaults.synchronize()
    }
    
    class func getDefaultTipIndex() -> Int {
        return Constants.defaults.integerForKey(Constants.defaultTipIndexKey)
    }
}
