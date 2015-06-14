//
//  InterfaceController.swift
//  Reford WatchKit Extension
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
  
    @IBOutlet var startMatchGroup: WKInterfaceGroup!
    @IBOutlet var matchGroup: WKInterfaceGroup!
    
    @IBOutlet var halfLabel: WKInterfaceLabel!
    @IBOutlet var timerLabel: WKInterfaceTimer!
    
    @IBOutlet var homeGoal: WKInterfaceLabel!
    @IBOutlet var awayGoal: WKInterfaceLabel!
    
    var isMatchStarted: Bool = false
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        picker.setItems(setupPicker())
    }
    
    override func willActivate() {
        super.willActivate()
        
        let x = WKExtension.sharedExtension().delegate as? ExtensionDelegate
        
        homeGoal.setText("\(x!.homeScore)")
        awayGoal.setText("\(x!.awayScore)")
        
        
        if isMatchStarted {
            startMatchGroup.setHidden(true)
            startMatchGroup.setRelativeHeight(0, withAdjustment: 0)
            matchGroup.setHidden(false)
            matchGroup.setRelativeHeight(1, withAdjustment: 0)
        } else {
            startMatchGroup.setHidden(false)
            startMatchGroup.setRelativeHeight(1, withAdjustment: 0)
            matchGroup.setHidden(true)
            matchGroup.setRelativeHeight(0, withAdjustment: 0)
        }

    }
    
    func setupPicker() -> [WKPickerItem] {
        var pickerArray:[WKPickerItem] = []
        
        for i: Int in 1...99 {
            let pickerItem = WKPickerItem()
            pickerItem.title = "\(i)"
            pickerArray.append(pickerItem)
        }
        
        return pickerArray
    }
    
    @IBAction func onStartTapped() {
        
        timerLabel.setDate(NSDate())
        timerLabel.start()
        
        isMatchStarted = true
        
        let animationTime: NSTimeInterval = 1.0
        
        animateWithDuration(animationTime) { () -> Void in
            self.startMatchGroup.setRelativeHeight(0, withAdjustment: 0)
            
            self.matchGroup.setRelativeHeight(1, withAdjustment: 0)
            self.matchGroup.setHidden(false)
        }
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "homeSegue" {
            return "FCB"
        } else {
            return "RMD"
        }
    }
    
    @IBAction func onStopMatchTapped() {
        isMatchStarted = false
        
        let animationTime: NSTimeInterval = 1.0
        
        animateWithDuration(animationTime) { () -> Void in
            self.startMatchGroup.setRelativeHeight(1, withAdjustment: 0)
            
            self.matchGroup.setRelativeHeight(0, withAdjustment: 0)
        }
        
        self.startMatchGroup.setHidden(false)
        
        let x = WKExtension.sharedExtension().delegate as? ExtensionDelegate
        
        x!.homeScore = 0
        x!.awayScore = 0
        homeGoal.setText("\(x!.homeScore)")
        awayGoal.setText("\(x!.awayScore)")
        
    }
    
}


























