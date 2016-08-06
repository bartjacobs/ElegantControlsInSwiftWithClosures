//
//  TableViewCell.swift
//  Controls With Closures
//
//  Created by Bart Jacobs on 06/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var mainLabel: UILabel!

    @IBOutlet var button: UIButton!
    @IBOutlet var smartButton: Button!

    override func prepareForReuse() {
        smartButton.didTouchUpInside = nil
    }
    
}
