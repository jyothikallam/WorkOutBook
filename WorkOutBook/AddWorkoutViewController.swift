//
//  AddWorkoutViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit

class AddWorkoutViewController: UIViewController {
    
    @IBOutlet weak var exec: UITextField!
    
    @IBOutlet weak var noOfReps: UITextField!
    
    @IBOutlet weak var noOfSets: UITextField!
    
    @IBAction func addTask(_ sender: AnyObject) {
        performSegue(withIdentifier: "workAdded", sender: self)
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



