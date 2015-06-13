//
//  MatchInterfaceController.swift
//  Reford
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class MatchInterfaceController: WKInterfaceController {

    @IBOutlet var halfLabel: WKInterfaceLabel!
    @IBOutlet var matchTimer: WKInterfaceTimer!

    @IBOutlet var homeScoreLabel: WKInterfaceLabel!
    @IBOutlet var homeNameLabel: WKInterfaceLabel!
    
    @IBOutlet var awayScoreLabel: WKInterfaceLabel!
    @IBOutlet var awayNameLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        matchTimer.setDate(NSDate())
        matchTimer.start()
    }

    @IBAction func onHomeTapped() {
        
    }

    @IBAction func onAwayTapped() {
        
    }
}