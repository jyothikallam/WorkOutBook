//
//  SignupViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit
import Firebase

class SignupViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorMsg: UILabel!
    
    @IBAction func signupAction(_ sender: AnyObject) {
        let email = emailAddress.text
        let pswd = password.text
        FIRAuth.auth()?.signIn(withEmail: email!, password: pswd!) { (user, error) in
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
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
