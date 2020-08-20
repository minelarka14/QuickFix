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
    func move(){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: Constants.storyboard.mainviewer) as! mainViewerViewController
        self.present(resultViewController, animated:true, completion:nil)
    }
    @IBAction func fellDown(_ sender: Any) {
    }
    @IBAction func burnt(_ sender: Any) {
        Constants.view.viewid = "burnt"
        move()
    }
    @IBAction func hitSth(_ sender: Any) {
    }
    @IBAction func toxicGas(_ sender: Any) {
        Constants.view.viewid = "toxicgas"
        move()
    }
    @IBAction func gotCut(_ sender: Any) {
        Constants.view.viewid = "cut"
        move()
    }
    @IBAction func strainMuscle(_ sender: Any) {
        Constants.view.viewid = "musclestr"
        move()
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
