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
        button.backgroundColor = Constants.color
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    static func styleTextField(_ textfield:UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        bottomLine.backgroundColor = Constants.color.cgColor
        textfield.borderStyle = .none
        textfield.layer.addSublayer(bottomLine)
    }
}
