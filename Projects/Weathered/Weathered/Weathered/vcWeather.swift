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
    @IBOutlet weak var lblDate: NSTextFieldCell!
    
    // View Functions
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear() {
        self.view.layer?.backgroundColor = CGColor(red: 0.29, green: 0.72, blue: 0.98, alpha: 1.0)
        
        // Get todays date
        let date = Date()
        let calendar = Calendar.current
        let calendarDay = calendar.component(.day, from: date)
        let calendarMonth = yearToString(year: calendar.component(.month, from: date))
        let calendarYear = calendar.component(.year, from: date)
        
        // Sets Labels
        lblDate.title = "Today " +  String(calendarDay) + " " + calendarMonth + " " + String(calendarYear)
    }
    override var representedObject: Any? {
        didSet {
        
        }
    }

    // Functions
    func yearToString(year: Int) -> String {
        var stringToReturn = ""
        
        switch year {
        case 1:
            stringToReturn = "January"
        case 2:
            stringToReturn = "February"
        case 3:
            stringToReturn = "March"
        case 4:
            stringToReturn = "April"
        case 5:
            stringToReturn = "May"
        case 6:
            stringToReturn = "June"
        case 7:
            stringToReturn = "July"
        case 8:
            stringToReturn = "August"
        case 9:
            stringToReturn = "September"
        case 10:
            stringToReturn = "October"
        case 11:
            stringToReturn = "November"
        case 12:
            stringToReturn = "December"
        default:
            stringToReturn = ""
        }
        
        return stringToReturn
    }
}

