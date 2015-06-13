//
//  Team1ViewController.swift
//  Reford
//
//  Created by Patrick Li on 6/13/15.
//  Copyright © 2015 augusteo. All rights reserved.
//

import UIKit

class Team1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var team1TableView: UITableView!
    @IBOutlet weak var team1Name: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        team1TableView.delegate = self
        team1TableView.dataSource = self
        
        
        
        
        team1TableManager.addTableView("30", timeSecond: "02", playerNum: "1", playerName: "Messi", type: "Goal")
        team1Name.title = team1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return team1TableManager.events1.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
    
        cell.textLabel?.text = team1TableManager.events1[indexPath.row].timeMinute + " : " + team1TableManager.events1[indexPath.row].timeSecond
        cell.detailTextLabel?.text = team1TableManager.events1[indexPath.row].playerName + "  #" + team1TableManager.events1[indexPath.row].playerNum + "    Type:" +  team1TableManager.events1[indexPath.row].type
    
        return cell

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
