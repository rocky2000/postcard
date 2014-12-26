//
//  ViewController.swift
//  postcard
//
//  Created by Jose Garcia on 2014-12-23.
//  Copyright (c) 2014 Jose Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var showName: UILabel!
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var message: UITextField!
    
    
    @IBOutlet weak var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMail(sender: AnyObject) {
        
        self.showName.textColor = UIColor.redColor()
        
        self.showName.text = self.name.text + self.message.text
        self.showName.hidden = false
        self.name.resignFirstResponder()
        
        self.name.text = ""
        self.message.text = ""
        self.sendButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
    
        
        return true
    }

}

