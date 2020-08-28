//
//  othHurtViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 28/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class othHurtViewController: UIViewController {
    
    @IBOutlet weak var fellDown: UIButton!
    @IBOutlet weak var burntBtn: UIButton!
    @IBOutlet weak var toxicFume: UIButton!
    @IBOutlet weak var cut: UIButton!
    @IBOutlet weak var strainMuscle: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        Utilities.styleFilledButton(fellDown)
        Utilities.styleFilledButton(burntBtn)
        Utilities.styleFilledButton(toxicFume)
        Utilities.styleFilledButton(cut)
        Utilities.styleFilledButton(strainMuscle)
    }
    @IBAction func fall(_ sender: Any) {
        Constants.view.viewid = "fall"
        move()
    }
    @IBAction func burnt(_ sender: Any) {
        Constants.view.viewid = "burnt"
        move()
    }
    @IBAction func toxicFume(_ sender: Any) {
        Constants.view.viewid = "toxicgas"
        move()
    }
    @IBAction func gotCut(_ sender: Any) {
        Constants.view.viewid = "cut"
        move()
    }
    @IBAction func strain(_ sender: Any) {
        Constants.view.viewid = "musclestr"
        move()
    }
    func move(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: Constants.storyboard.mainviewer) as! mainViewerViewController
        self.present(resultViewController, animated:true, completion:nil)
    }
}
