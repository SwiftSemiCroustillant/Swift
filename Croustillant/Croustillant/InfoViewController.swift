//
//  InfoViewController.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import UIKit

class InfoViewController: UITableViewController {

    // VARIABLES
    var indexPath = 0
    var actualContact: Person = Person()
    
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var emailContact: UILabel!
    @IBOutlet weak var streetNumberContact: UILabel!
    @IBOutlet weak var streetContact: UILabel!
    @IBOutlet weak var zipTownContact: UILabel!
    @IBOutlet weak var countryContact: UILabel!

    

    var background = UIImageView(image: UIImage(named: "backgroundToto"))
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        actualContact = ContactInstance.sharedInstance.contacts[indexPath]
        // Do any additional setup after loading the view.
        self.nameContact.text = actualContact.lastName! + " " + actualContact.firstName!
        self.phoneNumber.text = actualContact.phone?.last?.number
        self.emailContact.text = actualContact.email!
        self.streetNumberContact.text = actualContact.address?.last?.number
        self.streetContact.text = actualContact.address?.last?.street
        self.zipTownContact.text = actualContact.address!.last!.zipCode! + " " + actualContact.address!.last!.town!
        self.countryContact.text = actualContact.address?.last?.country

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "EditSegue" {
            let destinationViewController = segue.destinationViewController as! UINavigationController
            let controller = destinationViewController.viewControllers[0] as! AddViewController
            controller.indexContact = indexPath
        }
        
    }

}
