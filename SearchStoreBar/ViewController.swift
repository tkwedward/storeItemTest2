//
//  ViewController.swift
//  SearchStoreBar
//
//  Created by Edward Tang on 12/31/20.
//  Copyright © 2020 Edward Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var SearchButton: UIBarButtonItem!
    
    var searchText = "Asya"
    var searchResults = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
    }

}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("The Search Text is \(searchBar.text!) ")
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SearchResultCell"
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        cell.textLabel!.text = searchResults[indexPath.row]
        
        return cell
    }
}
