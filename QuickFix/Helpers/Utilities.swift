//
//  Utilities.swift
//  BloodDonation
//
//  Created by Muhammad Osaid on 25/6/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    static func styleFilledButton(_ button:UIButton) {
        button.backgroundColor = UIColor.init(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
}
