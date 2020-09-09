//
//  mainTableViewCell.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 9/9/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

protocol PlayVideoCellProtocol {
    func playVideoButtonDidSelect()
}

class mainTableViewCell: UITableViewCell {
    
    public var delegate: PlayVideoCellProtocol!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        Constants.view.viewid = convertViewID((self.textLabel?.text)!)
        self.delegate.playVideoButtonDidSelect()
    }
    func convertViewID (_ initString: String) -> String {
        var returnString:String?
        switch initString {
        case "Toxic Fumes":
            returnString = "toxicgas"
        case "Got Cut":
            returnString = "cut"
        case "Burnt":
            returnString = "burnt"
        case "Fall":
            returnString = "fall"
        case "Muscle strain":
            returnString = "musclestr"
        default:
            print("Error parsing ViewTitle into ViewID")
        }
        return returnString!
    }

}
