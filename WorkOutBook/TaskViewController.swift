//
//  TaskViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    var selectedDate: Date?
    
    @IBOutlet weak var task: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setRightBarButton(UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(WorkoutTaskViewController.barButtonItemClicked)), animated: true)
        
       task.text = "Task Summary"
    }
    
    func barButtonItemClicked() {
        performSegue(withIdentifier: "addTask", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

