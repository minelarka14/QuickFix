//
//  toxicFumesViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 29/7/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class toxicFumesViewController: UIViewController {
    var viewable = false
    @IBOutlet weak var buttonv: UIButton!
    @IBOutlet var playerView: YTPlayerView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload")
        datasave()
        setup()
    }
    func setup(){
        Utilities.styleFilledButton(buttonv)
    }
    func datasave(){
        if self.viewable{
            viewvid()
        }else{
            dontview()
        }
    }
    func dontview(){
        playerView.isHidden = true
        buttonv.isHidden = false
    }
    func viewvid(){
        buttonv.isHidden = true
        playerView.isHidden = false
        playerView.load(withVideoId: "LISG1CdDgWU")
    }
    @IBAction func buttonTouch(_ sender: Any) {
        self.viewable = true
        datasave()
    }
}
