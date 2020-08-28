//
//  searchViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 25/8/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class searchViewController: UIViewController {
    

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tbView: UITableView!
    
    public var articles = ["Toxic gas", "Fall", "Burnt", "Cut", "Muscle Strain"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

/*
extension ViewController: UITableViewDelegate, UITableViewDataSource, UITableViewController {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:indexPath)
        
        cell.textLabel?.text = ["Toxic gas", "Fall", "Burnt", "Cut", "Muscle Strain"][indexPath.row]
        
        return cell
    }
}
 */
