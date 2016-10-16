//
//  ForgotPasswordViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit
import Firebase

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var errorMsg: UILabel!
    
    @IBAction func resetPasword(_ sender: AnyObject) {
        let email = self.email.text
        
        FIRAuth.auth()?.sendPasswordReset(withEmail: email!) { error in
            if let error = error {
                self.errorMsg.text = error.localizedDescription
            } else {
                // Password reset email sent.
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

