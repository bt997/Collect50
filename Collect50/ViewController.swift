//
//  ViewController.swift
//  Collect50
//
//  Created by Brian Tran on 8/3/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California",
                  "Colorado", "Connecticut", "Delaware", "Florida", "Georgia",
                  "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
                  "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland",
                  "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri",
                  "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
                  "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
                  "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
                  "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
                  "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = states[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var listView: UITableView!
    @IBAction func sortView(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        listView.dataSource = self
    }
    
}
