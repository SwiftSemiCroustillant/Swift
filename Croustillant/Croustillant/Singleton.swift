//
//  Singleton.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import Foundation


private let _ContactInstanceSharedInstance = ContactInstance()

class ContactInstance{
    
    //VARIABLES
    var contacts: [Person]
    
    
    
    //METHODS
    init() {
        var Toto: Person = Person(LastName: "Anthony", FirstName: "Cordani",
            Adress: Address(),
            Phone: <#[Phone]?#>,
            Email: <#String?#>)
    }
    
    func AddContact() {
        
    }
    class var sharedInstance: ContactInstance {
        return _ContactInstanceSharedInstance
    }
}