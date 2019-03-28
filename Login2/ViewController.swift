//
//  ViewController.swift
//  Login2
//
//  Created by Soft Dev on 3/27/19.
//  Copyright © 2019 Lily Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func landing(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
     
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
        
    }
    @IBOutlet weak var userName: UITextField!

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "Logintolanding", sender: forgotUserNameButton)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "Logintolanding", sender: forgotPasswordButton)
    }
    
    
    
}

