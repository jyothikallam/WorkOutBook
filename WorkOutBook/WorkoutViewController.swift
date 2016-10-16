//
//  SecondViewController.swift
//  WorkOutBook
//
//  Created by Jyothi Reddy Kallam on 5/10/16.
//  Copyright © 2016 Jyothi. All rights reserved.
//

import UIKit
import Firebase
import CalendarView

class WorkoutViewController: UIViewController, CalendarViewDelegate{

    var selectedDate: Date?

    @IBAction func addWorkOut(_ sender: AnyObject) {
        performSegue(withIdentifier:
            "addWork", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calendarView = CalendarView(frame: CGRect(x: 8, y: 45, width: self.view.frame.width - 16, height: 300))
        
        calendarView.selectionColor = UIColor(colorLiteralRed: 0.203, green: 0.666, blue: 0.862, alpha: 1.000)
        calendarView.fontHeaderColor = UIColor(colorLiteralRed: 0.203, green: 0.666, blue: 0.862, alpha: 1.000)
        calendarView.shouldShowHeaders = true
        
        self.view.addSubview(calendarView)
        calendarView.calendarDelegate = self
        selectedDate = calendarView.currentDate
        arr.append(data)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "addWork"){
            let destination = segue.destination as! AddWorkoutViewController
            destination.selectedDate = selectedDate
        }
        if (segue.identifier == "viewTask"){
            let destination = segue.destination as! TaskViewController
        }
    }
    
    func didChangeCalendarDate(_ date: Date) {
        self.selectedDate! = date
    }
    
    func didTap(_ date: Date) {
        performSegue(withIdentifier: "ViewTask", sender: self)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

