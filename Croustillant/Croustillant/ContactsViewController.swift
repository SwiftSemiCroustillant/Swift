//
//  ContactsViewController.swift
//  Croustillant
//
//  Created by Anthony Cordani on 16/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDelegate {

    //VARIABLES
    var contacts = ContactInstance.sharedInstance.contacts
    var indexPathRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TABLEVIEWCELL LOAD
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("ContactCellIdentifier", forIndexPath: indexPath) as! ContactTableViewCell
        
        cell.contactLabel.text = contacts[indexPath.row].lastName! + " " + contacts[indexPath.row].firstName!
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        indexPathRow = indexPath.row
        self.performSegueWithIdentifier("ContactInfo", sender: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "ContactInfo" {
            let destinationViewController = segue.destinationViewController as! InfoViewController
            destinationViewController.indexPath = indexPathRow
        }
        else {
            let destinationViewController = segue.destinationViewController as! UINavigationController
            let controller = destinationViewController.viewControllers[0] as! AddViewController
            controller.isAdd = true
        }
        
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        var shareAction = UITableViewRowAction(style: default, title: "Delete") { (action, indexPath) -> Void in

            tableView.editing = false
            println("shareAction")
        }

        shareAction.backgroundColor = UIColor.grayColor()
    
        var doneAction = UITableViewRowAction(style: .Default, title: "Done") { (action, indexPath) -&gt; Void in
            tableView.editing = false
            println("readAction")
        }
        doneAction.backgroundColor = UIColor.greenColor()
    
        var deleteAction = UITableViewRowAction(style: .Default, title: "Delete") { (action, indexPath) -&gt; Void in
            tableView.editing = false
            println("deleteAction")
        }
        
        return [deleteAction, doneAction, shareAction]
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
    }
}
