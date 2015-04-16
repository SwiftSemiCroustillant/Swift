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
    var postalCode: String = ""
    var town: String = ""
    var country: String = ""
    
    init(){
        
    }
    
}

struct Phone {
    
    enum Type {
        case Domicile, Mobile, iPhone, Bureau
    }
    
    var type: Type = Type.Domicile
    var number: String = ""
}

