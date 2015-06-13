//
//  Team2ViewController.swift
//  Reford
//
//  Created by Patrick Li on 6/13/15.
//  Copyright © 2015 augusteo. All rights reserved.
//

import UIKit

class Team2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var team2TableView: UITableView!
    @IBOutlet weak var team2Name: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        team2TableView.delegate = self
        team2TableView.dataSource = self
        
        team2TableManager.addTableView("10", timeSecond: "04", playerNum: "2", playerName: "Poop", type: "Foul")
        team2Name.title = team2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return team2TableManager.events2.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = team2TableManager.events2[indexPath.row].timeMinute + " : " + team2TableManager.events2[indexPath.row].timeSecond
        cell.detailTextLabel?.text = team2TableManager.events2[indexPath.row].playerName + "  #" + team2TableManager.events2[indexPath.row].playerNum + "    Type:" +  team2TableManager.events2[indexPath.row].type
        
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
