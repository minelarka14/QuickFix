//
//  mainViewerViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 18/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class mainViewerViewController: UIViewController {

    @IBOutlet weak var loadVidBtn: UIButton!
    @IBOutlet weak var playerView: YTPlayerView!
    @IBOutlet weak var imgView: UIImageView!
    var viewable = false
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        setup()
        datasave()
    }
    func setup(){
        Utilities.styleFilledButton(loadVidBtn)
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
        loadVidBtn.isHidden = false
        Utilities.load(playerView, imgView, Constants.view.viewid!, false)
    }
    func viewvid(){
        loadVidBtn.isHidden = true
        playerView.isHidden = false
        Utilities.load(playerView, imgView, Constants.view.viewid!, true)
    }
    @IBAction func loadVid(_ sender: Any) {
        self.viewable = true
        datasave()
    }
}
