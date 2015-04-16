//
//  TableViewController.swift
//  CoursiOS
//
//  Created by Anthony Cordani on 15/04/2015.
//  Copyright (c) 2015 Cordani Industry. All rights reserved.
//
// Test

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var week = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]
    
    var selectedDay: String = ""
    
    @IBOutlet weak var TableViewCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // TABLEVIEWCELL LOAD  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return week.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("DayCellIdentifier", forIndexPath: indexPath) as! DayTableViewCell

        cell.DayLabel.text = week[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedDay = week[indexPath.row]
        self.performSegueWithIdentifier("DetailDay", sender: nil)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationViewController = segue.destinationViewController as! LabelDescriptionViewController
        destinationViewController.selectedDay = selectedDay

    }
}
