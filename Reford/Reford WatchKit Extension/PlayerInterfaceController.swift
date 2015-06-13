//
//  PlayerInterfaceController.swift
//  Reford
//
//  Created by victor augusteo on 13/06/2015.
//  Copyright © 2015 augusteo. All rights reserved.
//

import WatchKit
import Foundation


class PlayerInterfaceController: WKInterfaceController {

    @IBOutlet var teamLabel: WKInterfaceLabel!
    @IBOutlet var playerPicker: WKInterfacePicker!
    
    var selectedPlayer: Int = 0
    var playerArray: [String] = []
    var teamName: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        if let name = context as? String {
            teamLabel.setText(name)
            teamName = name
        }
        
        playerPicker.setItems(setupPicker())
    }

    func setupPicker() -> [WKPickerItem] {
        let numberArray:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
        let nameArray:[String] = ["Ter Stegen","Torralbo","Pique","Rakitic","Sergio Busquets","Xavier Hernandez","Perdo Rodriquez","Andres Iniesta","Luis Alberto","Lionel Messi","Neymar Junior","Rafael Alcantara","Claudio Bravo","Javier Mascherano","Marc Aregall","Douglas Pereira","Jordi Ramos","Sergi Carnicer","Adriano Claro","Daniel Alves","Thomas Vermaelen","Jermey Mathieu","Jordi Lopez", "That guy", "Another guy"]
        
        var pickerArray: [WKPickerItem] = []
        
        for i in 0...24 {
            
            let player = "\(numberArray[i]) \(nameArray[i])"
            
            let x = WKPickerItem()
            x.title = player
            pickerArray.append(x)
            
            playerArray.append(player)
        }
        
        return pickerArray
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onPickerChange(value: Int) {
        selectedPlayer = value
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return ([playerArray[selectedPlayer], teamName])
    }
}
