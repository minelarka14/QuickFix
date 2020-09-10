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
        viewBtn.layer.cornerRadius = 5
    }
    @IBOutlet weak var viewBtn: UIButton!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
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

    @IBAction func viewPress(_ sender: Any) {
        Constants.view.viewid = convertViewID((self.textLabel?.text)!)
        self.delegate.playVideoButtonDidSelect()
    }
}
