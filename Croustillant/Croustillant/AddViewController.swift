//
//  AddViewController.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import UIKit

class AddViewController: UITableViewController {

    // VARIABLES
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var streetNumber: UITextField!
    @IBOutlet weak var streetLabel: UITextField!
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var town: UITextField!
    @IBOutlet weak var country: UITextField!

    // Boolean true if User touch add button, else false
    var isAdd: Bool = false
    var indexContact = 0
    var contactList: [Person] = [Person]()
    var contactToEdit: Person = Person()


    override func viewDidLoad() {
        super.viewDidLoad()
        contactList = ContactInstance.sharedInstance.contacts
        contactToEdit = contactList[indexContact]

        // If isAdd is false then load contact information
        if !isAdd {
            self.firstName.text = contactToEdit.firstName
            self.lastName.text = contactToEdit.lastName
            self.phoneNumber.text = contactToEdit.phone?.last?.number
            self.email.text = contactToEdit.email
            self.streetNumber.text = contactToEdit.address?.last?.number
            self.streetLabel.text = contactToEdit.address?.last?.street
            self.zipCode.text = contactToEdit.address?.last?.zipCode
            self.town.text = contactToEdit.address?.last?.town
            self.country.text = contactToEdit.address?.last?.country
        }

    }

    override func viewDidAppear() {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SubmitButtonClick(sender: AnyObject) {
        if((self.presentingViewController) != nil){
            //Add or Edit contact
            var editAdress = Address(Number: self.streetNumber.text, Street: self.streetLabel.text, ZipCode: self.zipCode.text, Town: self.town.text, Country: self.country.text)
            var editPhone = Phone(Type: Phone.CaseOfType.Domicile, NumberPhone: self.phoneNumber.text)
            var newContact = Person(LastName: self.lastName.text, FirstName: self.firstName.text, Address: [editAdress], Phone: [editPhone], Email: self.email.text)

            if contactList[newContact] != nil {
                //Delete exitant contact before insert
                contactList[indexContact]=newContact
            }

            contactList.append(newContact)
            self.dismissViewControllerAnimated(true, completion: nil)

        }
    }

    @IBAction func CancelButtonClick(sender: AnyObject) {
        if((self.presentingViewController) != nil){
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
