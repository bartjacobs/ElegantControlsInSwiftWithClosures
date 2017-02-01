//
//  ViewController.swift
//  Controls With Closures
//
//  Created by Bart Jacobs on 06/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!

    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
    }

    // MARK: - Actions

    @IBAction func didTapButton(_ sender: UIButton) {
        
    }

}
