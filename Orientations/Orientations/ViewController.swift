//
//  ViewController.swift
//  Orientations
//
//  Created by Anthony Agbeyome on 9/18/16.
//  Copyright © 2016 Anthony Agbeyome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        //returning the specific orientations for this controller
        return [UIInterfaceOrientationMask.Portrait, UIInterfaceOrientationMask.LandscapeLeft, UIInterfaceOrientationMask.LandscapeRight]
    }



}

