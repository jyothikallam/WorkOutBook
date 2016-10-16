//
//  AddWorkoutViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit

class AddWorkoutViewController: UIViewController {
    
    var selectedDate: Date?
    var month: Int!
    var date: Int!
    
    @IBOutlet weak var exec: UITextField!
    @IBOutlet weak var noOfReps: UITextField!
    @IBOutlet weak var noOfSets: UITextField!
    
    @IBAction func addTask(_ sender: AnyObject) {
        performSegue(withIdentifier: "viewCalendar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "addTask"){
            let destination = segue.destination as! WorkoutViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        let cal = Calendar.current
        let components = (cal as NSCalendar).components([.day , .month , .year], from: selectedDate!)
        
        month = components.month
        date = components.day
        
        self.navigationItem.title = "New Event"
        let newBackButton = UIBarButtonItem(title: monthHelper(month), style: .bordered, target: nil, action: nil)
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = newBackButton
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func monthHelper(_ month: Int)-> String{
        switch month {
        case 01:
            return "January"
        case 02:
            return "February"
        case 03:
            return "March"
        case 04:
            return "April"
        case 05:
            return "May"
        case 06:
            return "June"
        case 07:
            return "July"
        case 08:
            return "August"
        case 09:
            return "September"
        case 10:
            return "October"
        case 11:
            return "November"
        case 12:
            return "december"
        default:
            return "Month"
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



