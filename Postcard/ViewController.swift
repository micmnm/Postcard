//
//  ViewController.swift
//  Postcard
//
//  Created by mircea on 9/20/14.
//  Copyright (c) 2014 Mircea Militaru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // Message field
        messageLabel.hidden = false
        messageLabel.text = messageTextField.text
        messageTextField.text = ""
        messageLabel.textColor = UIColor.redColor()
        
        // Name field
        nameLabel.hidden = false
        nameLabel.text = nameTextField.text
        nameTextField.text = ""
        nameLabel.textColor = UIColor.blueColor()
        
        
        // Hide responder (keyboard)
        messageTextField.resignFirstResponder()
        // Set text for button as sent
        mailButton.setTitle("mail sent", forState: UIControlState.Normal)
        
    }

}

