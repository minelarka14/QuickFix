//
//  ViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 28/7/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var felldownButton: UIButton!
    @IBOutlet weak var burntButton: UIButton!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var fumesButton: UIButton!
    @IBOutlet weak var cutButton: UIButton!
    @IBOutlet weak var strainedButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setuplooks()
    }
    func setuplooks(){
        Utilities.styleFilledButton(felldownButton)
        Utilities.styleFilledButton(burntButton)
        Utilities.styleFilledButton(hitButton)
        Utilities.styleFilledButton(fumesButton)
        Utilities.styleFilledButton(cutButton)
        Utilities.styleFilledButton(strainedButton)
    }
}

