//
//  settingViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 28/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class settingViewController: UIViewController {

    @IBOutlet weak var creditBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Utilities.styleFilledButton(creditBtn)
    }
}
