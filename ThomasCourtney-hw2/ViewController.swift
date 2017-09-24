//
//  ViewController.swift
//  ThomasCourtney-hw2
//
//  Created by Courtney Thomas on 9/18/17.
//  Copyright © 2017 CS329E. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set each text field's delegate.
        // This tells iOS that this class has a method iOS can call
        // (textFieldShouldReturn) when it wants to dismiss the keyboard.
        txtField?.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // This method is called when the user touches the Return key on the
    // keyboard. The 'textField' passed in is a pointer to the textField
    // the cursor was in at the time they touched the Return key on the
    // keyboard.
    //
    // From the Apple documentation: Asks the delegate if the text field
    // should process the pressing of the return button.
    //
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 'First Responder' is the same as 'input focus'.
        // We are removing input focus from the text field.
        textField.resignFirstResponder()
        return true
    }
    
    // Called when the user touches on the main view (outside the UITextField).
    //
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
   //label declarations
    @IBOutlet weak var label1: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var readyLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    //text field assignments
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var cityText: UITextField!
    //button function
    @IBAction func myButton(_ sender: Any) {
        let name = nameText.text
        let city = cityText.text
        if name?.isEmpty ?? true {
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }
        if city?.isEmpty ?? true {
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }
        else {
            messageLabel.text = name! + "-" + city!
        }
    }
  
}

