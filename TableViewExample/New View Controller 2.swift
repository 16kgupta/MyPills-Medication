//
//  New View Controller 2.swift
//  TableViewExample
//
//  Created by Karina Gupta on 5/24/16.
//  Copyright © 2016 agreyson. All rights reserved.
//

import Foundation


import UIKit

//class NewViewController2: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
class NewViewController2: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    
    var allCellsText = [String]()
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        //cell.theField.delegate = self // theField is your IBOutlet UITextfield in your custom cell
        
        //cell.theField.text = "Test"
        
        return cell
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        allCellsText.append(textField.text!)
        print(allCellsText)
    }
    
    @IBOutlet weak var pillNameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var ProductLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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