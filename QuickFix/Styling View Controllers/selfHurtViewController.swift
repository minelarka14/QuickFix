//
//  selfHurtViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 5/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class selfHurtViewController: UIViewController {

    @IBOutlet weak var felldown: UIButton!
    @IBOutlet weak var burnt: UIButton!
    @IBOutlet weak var hit: UIButton!
    @IBOutlet weak var toxicfume: UIButton!
    @IBOutlet weak var cut: UIButton!
    @IBOutlet weak var strained: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        setup()
    }
    func setup(){
        Utilities.styleFilledButton(felldown)
        Utilities.styleFilledButton(burnt)
        Utilities.styleFilledButton(hit)
        Utilities.styleFilledButton(toxicfume)
        Utilities.styleFilledButton(cut)
        Utilities.styleFilledButton(strained)
    }
}

class kindofforce: UIViewController{
    @IBOutlet weak var bluntForce: UIButton!
    @IBOutlet weak var sharpForce: UIButton!
    override func viewDidAppear(_ animated: Bool) {
        setup()
    }
    func setup(){
        Utilities.styleFilledButton(bluntForce)
        Utilities.styleFilledButton(sharpForce)
    }
}
