//
//  Constants.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 25/6/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    struct view {
        static var viewing = false
        static var viewid:String?
    }
    struct storyboard {
        static var mainviewer = "mainviewer"
    }
    struct settings {
        static var dataSaverMode = true
    }
    static var articles = ["Toxic gas", "Fall", "Burnt", "Cut", "Muscle Strain"]
    static var curtheme = "Light"
    static var color = UIColor.init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
}

