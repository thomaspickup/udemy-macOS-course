//
//  AppDelegate.swift
//  Weathered
//
//  Created by Thomas Pickup on 15/11/2017.
//  Copyright © 2017 Thomas Pickup. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    // Variables
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    // Functions
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Set's up status item button
        statusItem.button?.title = "--°c"
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

