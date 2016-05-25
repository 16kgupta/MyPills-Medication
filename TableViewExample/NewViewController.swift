//
//  NewViewController.swift
//  TableViewExample
//
//  Created by agreyson on 5/12/16.
//  Copyright © 2016 agreyson. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var name = "Default name"
    var color = "default color"
    var desc = "default description"
    var numberPerDay = 1
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var descripLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.nameLabel.text = self.name
        self.colorLabel.text = self.color
        self.descripLabel.text = self.desc
        self.timeLabel.text = String(self.numberPerDay)
        
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
