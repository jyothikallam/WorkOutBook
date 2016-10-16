//
//  SignupViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class SignupViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorMsg: UILabel!
    
    @IBAction func signupAction(_ sender: AnyObject) {
        let email = emailAddress.text
        let pswd = password.text
        FIRAuth.auth()?.createUser(withEmail: email!, password: pswd!) { (user, error) in
            if let error = error {
                print(error.localizedDescription)
                self.errorMsg.text = error.localizedDescription
                return
            }
            else{
                self.performSegue(withIdentifier: "verifiedUser", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        loginButton.frame = CGRect(x: 16, y: 32, width: self.view.frame.size.width - 32, height: 32)
        self.view.addSubview(loginButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
