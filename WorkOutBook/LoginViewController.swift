//
//  LoginViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var errorMsg: UILabel!
    
    @IBAction func forgotPassword(_ sender: AnyObject) {
        performSegue(withIdentifier: "forgotPassword", sender: self)
    }
    
    @IBAction func loginAction(_ sender: AnyObject) {
        performSegue(withIdentifier: "verifiedUser", sender: self)
    }
    
    
    @IBAction func signupAction(_ sender: AnyObject) {
        performSegue(withIdentifier: "signupId", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
