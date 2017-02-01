//
//  TableViewController.swift
//  Controls With Closures
//
//  Created by Bart Jacobs on 06/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let tableViewCell = "TableViewCell"

    let items = [ "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty" ]

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

    // MARK: - Table View Data Source Methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier(tableViewCell, forIndexPath: indexPath) as? TableViewCell {
            // Fetch Item
            let item = items[indexPath.row]

            // Configure Cell
            cell.mainLabel.text = item
            cell.button.addTarget(self, action: #selector(didTapButton(_:)), forControlEvents: .TouchUpInside)

            return cell
        }

        return UITableViewCell(style: .Default, reuseIdentifier: nil)
    }
    */

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCell, for: indexPath) as? TableViewCell {
            // Fetch Item
            let item = items[indexPath.row]

            // Configure Cell
            cell.mainLabel.text = item
            cell.button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)

            cell.smartButton.didTouchUpInside = { (sender) in
                print(item)
            }

            return cell
        }
        
        return UITableViewCell(style: .default, reuseIdentifier: nil)
    }

    // MARK: - Actions
    
    func didTapButton(_ sender: UIButton) {
        // Fetch Item
        if let superview = sender.superview, let cell = superview.superview as? TableViewCell {
            if let indexPath = tableView.indexPath(for: cell) {
                let item = items[indexPath.row]
                print(item)
            }
        }
    }

    // MARK: - Helper Methods

    fileprivate func setupTableView() {
        tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0)
    }
    
}
