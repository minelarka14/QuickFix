//
//  Utilities.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 25/6/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import Foundation
import UIKit
import youtube_ios_player_helper

class Utilities {
    //MARK: Styling
    static func styleFilledButton(_ button:UIButton) {
        button.backgroundColor = Constants.color
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    static func styleTextField(_ textfield:UITextField) {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        bottomLine.backgroundColor = Constants.color.cgColor
        textfield.borderStyle = .none
        textfield.layer.addSublayer(bottomLine)
    }
    //MARK: Loading Video
    static func DetYTID(_ nameid:String, _ viewing:Bool) -> String{
        if viewing{
            switch nameid {
            case "toxicgas":
                return "LISG1CdDgWU"
            case "musclestr":
                return "nvG5VgLN2IM"
            case "cut":
                return "4e7evinsfm0"
            case "burnt":
                return "O1kiguGUt3o"
            case "fall":
                return "aRzljLptRok"
            default:
                return "INCORRECT_NAME_ERROR"
            }
        }
        else{return "INCORRECT_CALL_ERROR"}
    }
    
    static func DetImg(_ nameimg:String, _ viewing:Bool) -> (UIImage?, Bool) {
        if viewing {
            switch nameimg {
            case "toxicgas":
                return (UIImage(named: "toxicgasinfo")!, true)
            case "musclestr":
                return (UIImage(named: "musclestr"), true)
            case "cut":
                return (UIImage(named: "cut"), true)
            case "burnt":
                return (UIImage(named: "burnt"), true)
            case "fall":
                return(UIImage(named: "fall"), true)
            default:
                assert(true, "INCORRECT_NAME_ERROR")
            }
        }
        else{
            assert(true, "VIEWING_IS_FALSE")
            return (UIImage(named: "error")!, false)
        }
        return (UIImage(named: "error")!, false)
    }
    
    static func load(_ viewing:YTPlayerView!, _ imageview:UIImageView, _ nameid:String, _ viewingvid:Bool){
        let getid = self.DetYTID(nameid, true)
        let (getimg, worked) = self.DetImg(nameid, true)
        if viewingvid {
            if worked{
                imageview.image = getimg
            }
            else{
                print("ERROR getting image")
            }
            viewing.load(withVideoId: getid)
        }else{
            if worked{
                imageview.image = getimg
            }
            else{
                print("ERROR getting image")
            }
        }
        
    }
}
