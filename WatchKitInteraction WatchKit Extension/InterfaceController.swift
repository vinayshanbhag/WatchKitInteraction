//
//  InterfaceController.swift
//  WatchKitInteraction WatchKit Extension
//
//  Created by Vinay on 1/9/16.
//  Copyright © 2016 Vinay Shanbhag. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var button: WKInterfaceButton!
    var buttonState = true // Hold state here because we cannot get button state from WKInterfaceButton
    
    @IBAction func buttonPressed() {
        if buttonState {
            buttonState = false
            button.setTitle("Off")
            button.setBackgroundColor(UIColor.redColor())
        } else {
            buttonState = true
            button.setTitle("On")
            button.setBackgroundColor(UIColor.greenColor())
        }
    }
   
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
