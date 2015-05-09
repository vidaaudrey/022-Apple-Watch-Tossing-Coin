//
//  InterfaceController.swift
//  022-Apple-Watch-Tossing-Coin WatchKit Extension
//
//  Created by Audrey Li on 5/8/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var isTosing = false
    @IBOutlet weak var coinImage: WKInterfaceImage!
    @IBOutlet weak var tossBtn: WKInterfaceButton!
    
    @IBAction func tossBtnPressed() {
        println("toss pressed")
        if isTosing {
            coinImage.stopAnimating()
            tossBtn.setTitle("Toss Again")
            isTosing = false

        } else {
            coinImage.startAnimating()
            tossBtn.setTitle("Stop")
            isTosing = true
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
