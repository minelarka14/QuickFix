//
//  SearchTableViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 9/9/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController {

    let data = ["Toxic Fumes", "Got Cut", "Burnt", "Fall", "Muscle strain"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

}
