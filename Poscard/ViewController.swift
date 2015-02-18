//
//  ViewController.swift
//  Poscard
//
//  Created by Hector Ghinaglia on 2/18/15.
//  Copyright (c) 2015 Koombea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
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
        //sdsd
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor();
        
        enterMessageTextField.text = "";
        enterMessageTextField.resignFirstResponder();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }

}

