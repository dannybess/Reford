//
//  ActionInterfaceController.swift
//  Reford
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class ActionInterfaceController: WKInterfaceController {

    @IBOutlet var teamLabel: WKInterfaceLabel!
    @IBOutlet var playerLabel: WKInterfaceLabel!
    
    var titleText: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let name = context as? [String] {
            playerLabel.setText("- \(name[0])")
            teamLabel.setText(name[1])
            
            titleText = "\(name[1]) - \(name[0]))"
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        switch segueIdentifier {
        case "goalAction":
            return ["0",titleText]
        case "yellowAction":
            return ["1",titleText]
        case "redAction":
            return ["2",titleText]
        case "handAction":
            return ["3",titleText]
        default:
            return -1
        }
    }
}
