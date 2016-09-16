//
//  ViewController.swift
//  HelloWorld
//
//  Created by Anthony Agbeyome on 9/15/16.
//  Copyright © 2016 Anthony Agbeyome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    @IBAction func ButtonPressed(sender: UIButton) {
        let buttonTitle = sender.titleForState(.Normal)!
        myLabel.text = "\(buttonTitle) clicked"
    }


}

