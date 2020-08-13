//
//  launchScreenViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 6/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class launchScreenViewController: UIViewController {

    @IBOutlet weak var progBar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
        for i in 0...30{
            sleep(0.1)
            progBar.progress += 3.33
        }
        print("done")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
