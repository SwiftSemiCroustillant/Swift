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
        var toto: Person = Person(LastName: "Anthony",
            FirstName: "Cordani",
            Address: [Address(Number: "36", Street: "Boulevard des écoles", ZipCode: "82230", Town: "MONCLAR DE QUERCY", Country: "FRANCE")],
            Phone: [Phone(Type: Phone.CaseOfType.Mobile, NumberPhone: "0674815756")],
            Email: "a.cordani@me.com")
        var mine: Person = Person(LastName: "Anthony",
            FirstName: "Cordani",
            Address: [Address(Number: "36", Street: "Boulevard des écoles", ZipCode: "82230", Town: "MONCLAR DE QUERCY", Country: "FRANCE")],
            Phone: [Phone(Type: Phone.CaseOfType.Mobile, NumberPhone: "0674815756")],
            Email: "a.cordani@me.com")
        var gabi: Person = Person(LastName: "Anthony",
            FirstName: "Cordani",
            Address: [Address(Number: "36", Street: "Boulevard des écoles", ZipCode: "82230", Town: "MONCLAR DE QUERCY", Country: "FRANCE")],
            Phone: [Phone(Type: Phone.CaseOfType.Mobile, NumberPhone: "0674815756")],
            Email: "a.cordani@me.com")
        var isa: Person = Person(LastName: "Anthony",
            FirstName: "Cordani",
            Address: [Address(Number: "36", Street: "Boulevard des écoles", ZipCode: "82230", Town: "MONCLAR DE QUERCY", Country: "FRANCE")],
            Phone: [Phone(Type: Phone.CaseOfType.Mobile, NumberPhone: "0674815756")],
            Email: "a.cordani@me.com")
        
        self.contacts = [toto, mine, gabi, isa]
        
    }
    
    func AddContact(LastName lastname:String?, FirstName firstName:String?, Address address:[Address]?, Phone phone:[Phone]?, Email email: String?) {


        
    }
    class var sharedInstance: ContactInstance {
        return _ContactInstanceSharedInstance
    }
}