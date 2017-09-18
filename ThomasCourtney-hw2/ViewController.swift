//
//  ViewController.swift
//  ThomasCourtney-hw2
//
//  Created by Courtney Thomas on 9/18/17.
//  Copyright © 2017 CS329E. All rights reserved.
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

    @IBOutlet weak var label1: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var readyLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var cityText: UITextField!
    
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

