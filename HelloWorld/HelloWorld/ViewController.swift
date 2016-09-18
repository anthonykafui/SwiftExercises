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
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var leftSwitch: UISwitch!
    @IBOutlet weak var rightSwitch: UISwitch!
    
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    
    @IBAction func confirmButtonPressed(sender: UIButton) {
        
        let controller = UIAlertController(title: "Are You Sure?",  message:nil, preferredStyle: .ActionSheet)
        
        let yesActionHandler = { (action: UIAlertAction) -> Void in
            
            // ! after self.txtname.text is how we unwrap /get the value from the optional
            let msg = self.txtName.text!.isEmpty ? "You can breathe easy, everything went OK." :
                "You can breathe easy, \(self.txtName.text!)," + " everything went OK."
            
            let controller2 = UIAlertController( title:"Something Was Done", message: msg, preferredStyle: .Alert )
            let cancelAction = UIAlertAction( title: "Phew!", style: .Cancel, handler: nil )
            controller2.addAction(cancelAction)
            self.presentViewController( controller2, animated: true, completion: nil)
            
        }
        
        let yesAction = UIAlertAction(title: "Yes, I'm sure!", style: .Destructive, handler: yesActionHandler)
        let noAction = UIAlertAction(title: "No way!", style: .Cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
       
       //if-let optional bining. if controller.popoverPresentationController is not nil assign to ppc and then set ppc sourceView and sourceRect
        if let ppc = controller.popoverPresentationController {
                                ppc.sourceView = sender
                                ppc.sourceRect = sender.bounds
                            }
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func toggleControls(sender: UISegmentedControl) {
        let option = sender.selectedSegmentIndex;
        var hide = false;
        if(option > 0){
            hide = true;
        }
        
        leftSwitch.hidden = hide;
        rightSwitch.hidden = hide;
        leftButton.hidden = !(hide);
        rightButton.hidden = !(hide);
    }
    
    @IBAction func switchChanged(sender: UISwitch) {
        let state = sender.on;
        leftSwitch.setOn(state, animated: true);
        rightSwitch.setOn(state, animated: true);
    }
    
    @IBAction func ButtonPressed(sender: UIButton) {
        let buttonTitle = sender.titleForState(.Normal)!
        let plainText = "\(buttonTitle) clicked"
        let styledText = NSMutableAttributedString(string: plainText)
        let attributes = [ NSFontAttributeName: UIFont.boldSystemFontOfSize(myLabel.font.pointSize) ]
        let nameRange = (plainText as NSString).rangeOfString(buttonTitle)
        styledText.setAttributes(attributes, range: nameRange)
        myLabel.attributedText = styledText
    }
    
    @IBAction func sliderChanged(sender: UISlider){
            let progress = lroundf(sender.value)
            sliderLabel.text = "\(progress)"
    }
    
    /* dismiss keyboard on return key */
    @IBAction func textFieldDoneEditing(sender: UITextField) {
            sender.resignFirstResponder()
    }
    
    /* dismiss keaybaord on touch on view */
    @IBAction func backgroundTap(sender: UIControl) {
        txtName.resignFirstResponder()
        txtNumber.resignFirstResponder()
    }
    
    override func viewDidLoad() {
                super.viewDidLoad()
                sliderLabel.text = "50"
                leftButton.hidden = true;
                rightButton.hidden = true;
    }


}

