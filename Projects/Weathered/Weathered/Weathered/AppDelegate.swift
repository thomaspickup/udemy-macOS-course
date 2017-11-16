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
    
    // Application Functions
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Set's up status item button
        statusItem.button?.title = "--°"
        statusItem.action = #selector(AppDelegate.displayPopUp(_:))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    // Functions
    @objc func displayPopUp(_ sender: AnyObject?) {
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        guard let vc = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "vcWeather")) as? NSViewController else { return }
        let popOverView = NSPopover()
        
        popOverView.contentViewController = vc
        popOverView.behavior = .transient
        popOverView.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .minY)
    }
}

