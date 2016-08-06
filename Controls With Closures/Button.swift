//
//  Button.swift
//  Controls With Closures
//
//  Created by Bart Jacobs on 06/08/16.
//  Copyright © 2016 Cocoacasts. All rights reserved.
//

import UIKit

class Button: UIButton {

    typealias DidTapButton = (Button) -> ()

    var didTouchUpInside: DidTapButton? {
        didSet {
            if didTouchUpInside != nil {
                addTarget(self, action: #selector(didTouchUpInside(_:)), forControlEvents: .TouchUpInside)
            } else {
                removeTarget(self, action: #selector(didTouchUpInside(_:)), forControlEvents: .TouchUpInside)
            }
        }
    }

    // MARK: - Actions

    func didTouchUpInside(sender: UIButton) {
        if let handler = didTouchUpInside {
            handler(self)
        }
    }
    
}
