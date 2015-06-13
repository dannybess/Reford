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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let data = context as? [String] {
            teamLabel.setText(data[1])
            setupConfirmStuff(data[0])
        }
    }

    func setupConfirmStuff(action: String) {
        
        confirmImage.setImage(UIImage(named: action))
        
        switch action {
        case "0":
            confirmText.setText("GOAL")
        case "1":
            confirmText.setText("Yellow Card")
        case "2":
            confirmText.setText("Red Card")
        case "3":
            confirmText.setText("Hand Ball")
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
//        self.popToRootController()
    }
}
