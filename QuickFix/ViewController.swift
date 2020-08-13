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
        switch Constants.curtheme {
        case "Light":
            self.view.backgroundColor = UIColor.white
        case "Dark":
            self.view.backgroundColor = UIColor.init(red: 45/255, green: 48/255, blue: 45/255, alpha: 1)
        default:
            self.view.backgroundColor = UIColor.white
        }
        Utilities.styleFilledButton(selfHurt)
        Utilities.styleFilledButton(othHurt)
    }
}

