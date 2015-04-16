//
//  AddressClass.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import Foundation

struct Address {
    
    // VARIABLE
    var number: String = ""
    var street: String = ""
    var zipCode: String = ""
    var town: String = ""
    var country: String = ""
    
    init(Number number: String, Street street: String, ZipCode zipCode: String, Town town: String, Country country: String ){
        
        self.number = number
        self.street = street
        self.zipCode = zipCode
        self.town = town
        self.country = country
    }
    
}

struct Phone {
    
    enum CaseOfType {
        case Domicile, Mobile, iPhone, Bureau
    }
    
    var type: CaseOfType = CaseOfType.Domicile
    var number: String = ""
    
    init(Type type: CaseOfType, NumberPhone numberPhone: String){
        
        self.type = type
        self.number = numberPhone
    }
}

