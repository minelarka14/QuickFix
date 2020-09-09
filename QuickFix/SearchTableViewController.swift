//
//  SearchTableViewController.swift
//  QuickFix
//
//  Created by Muhammad Osaid on 9/9/20.
//  Copyright © 2020 Muhammad Osaid. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchBarDelegate, PlayVideoCellProtocol {

    let data = ["Toxic Fumes", "Got Cut", "Burnt", "Fall", "Muscle strain"]
    var filteredData: [String]!
    
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        filteredData = data
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filteredData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as! mainTableViewCell
        cell.textLabel?.text = filteredData[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    //MARK: Searchbar Config
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == "" {
            filteredData = data
        }
        else {
            for i in data{
                if i.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(i)
                }
            }
        }
        self.tableView.reloadData()
    }
    func playVideoButtonDidSelect() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: Constants.storyboard.mainviewer) as! mainViewerViewController
        self.present(resultViewController, animated:true, completion:nil)
    }
}
