//
//  ViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 28/7/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var selfHurt: UIButton!
    @IBOutlet weak var othHurt: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        setuplooks()
    }
    
    func setuplooks(){
        Utilities.styleFilledButton(selfHurt)
        Utilities.styleFilledButton(othHurt)
    }
}

