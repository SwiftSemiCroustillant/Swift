//
//  PersonClass.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import Foundation

class Person {
    
    // VARIABLES
    var lastName: String?
    var firstName: String?
    var address: [Address]?
    var phone: [Phone]?
    var email: String?
    
    //INIT
    init()
    {
        self.lastName = ""
        self.firstName = ""
        self.address = [Address()]
        self.phone = [Phone()]
        self.email = ""
    }
    init(LastName lastname:String?, FirstName firstName:String?, Address address:[Address]?, Phone phone:[Phone]?, Email email: String?){
        
        self.lastName = lastname
        self.firstName = firstName
        self.address = address
        self.phone = phone
        self.email = email
    }
    
}