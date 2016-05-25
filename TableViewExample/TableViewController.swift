//
//  TableViewController.swift
//  TableViewExample
//
//  Created by agreyson on 5/12/16.
//  Copyright © 2016 agreyson. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var medications = [Medication]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.medications.append(Medication(name: "zyrtec", color: "white",description: "small and oval", numberPerDay: 1))
        self.medications.append(Medication(name: "tylenol", color: "white",description: "big and oval", numberPerDay: 4))
        self.medications.append(Medication(name: "Echinacea", color: "green",description: "powdery and oval", numberPerDay: 2))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.medications.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let aCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell

        aCell.titleLabel.text = self.medications[indexPath.row].name

        return aCell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender:
        AnyObject?)
    {
        if (segue.identifier == "showView")
        {
            // upcoming is set to NewViewController (.swift)
            var upcoming = segue.destinationViewController
                as! NewViewController
            
            // indexPath is set to the path that was tapped
            let indexPath = self.tableView.indexPathForSelectedRow
            
            // set four medication attributes in destination to values in the Medication object
            upcoming.name = self.medications[indexPath!.row].name
            upcoming.color = self.medications[indexPath!.row].color
            upcoming.desc = self.medications[indexPath!.row].description
            upcoming.numberPerDay = self.medications[indexPath!.row].numberPerDay
            
            self.tableView.deselectRowAtIndexPath(indexPath!, animated: true)
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
