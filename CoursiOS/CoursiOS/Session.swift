//
//  Session.swift
//  CoursiOS
//
//  Created by Anthony Cordani on 15/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import Foundation

class Session {
    
    var beginHour: NSDate
    var endHour: NSDate
    var description: String
    
    init() {
        beginHour = NSDate()
        endHour = beginHour.dateByAddingTimeInterval(NSDateComponents(componant.hour = 1)
    }
    
    
}