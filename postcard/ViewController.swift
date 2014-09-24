//
//  ViewController.swift
//  postcard
//
//  Created by Charles on 9/24/14.
//  Copyright (c) 2014 Charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var messageField: UITextField!
    
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
        
        messageLabel.hidden = false
        nameLabel.hidden = false
        nameLabel.text = nameField.text
        nameField.text = ""
        nameLabel.textColor = UIColor.redColor()
        
        messageLabel.text = messageField.text
        
        
        messageField.text = ""
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        messageField.resignFirstResponder()
        
         messageLabel.textColor = UIColor.blueColor()
    }
   
}

