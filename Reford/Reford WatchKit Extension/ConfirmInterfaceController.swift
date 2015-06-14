//
//  ConfirmInterfaceController.swift
//  Reford
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmInterfaceController: WKInterfaceController {
    
    @IBOutlet var teamLabel: WKInterfaceLabel!
    @IBOutlet var confirmImage: WKInterfaceImage!
    @IBOutlet var confirmText: WKInterfaceLabel!
    
    var teamName: String = ""
    var isGoal: Bool = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let data = context as? [String] {
            teamLabel.setText(data[1])
            setupConfirmStuff(data[0])
            teamName = data[2]
        }
    }

    func setupConfirmStuff(action: String) {
        
        confirmImage.setImage(UIImage(named: action))
        
        switch action {
        case "0":
            isGoal = true
            confirmText.setText("GOAL")
            return
        case "1":
            confirmText.setText("Yellow Card")
            return
        case "2":
            confirmText.setText("Red Card")
            return
        case "3":
            confirmText.setText("Hand Ball")
            return
        default:
            return
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

    @IBAction func onCancelTapped() {
        self.popController()

    }
    
    @IBAction func onConfirmTapepd() {
        
        let x = WKExtension.sharedExtension().delegate as? ExtensionDelegate
        
        if isGoal {
            if teamName == "FCB" {
                x!.homeScore++
            } else {
                x!.awayScore++
            }
        }

        
        self.popToRootController()
    }
}
