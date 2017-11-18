//
//  vcWeather.swift
//  Weathered
//
//  Created by Thomas Pickup on 15/11/2017.
//  Copyright © 2017 Thomas Pickup. All rights reserved.
//

import Cocoa

class vcWeather: NSViewController {
    // Variables
    
    // Outlets
    
    // View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear() {
        self.view.layer?.backgroundColor = CGColor(red: 0.29, green: 0.72, blue: 0.98, alpha: 1.0)
    }
    override var representedObject: Any? {
        didSet {
        
        }
    }

    // Functions
}

