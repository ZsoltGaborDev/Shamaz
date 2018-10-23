//
//  ViewController.swift
//  Shamaz
//
//  Created by zsolt on 16/10/2018.
//  Copyright © 2018 zsolt. All rights reserved.
//

import UIKit

var playerCount = 0

class ViewController: UIViewController {

    
    
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        welcomeMessageLabel.text = "Tell Us Your Story Player \(Int.random(in: 1...10))"
    }
       

    @IBAction func reflectOnThePastButton(_ sender: Any) {
    }
    
    
    @IBAction func dreamOnTheFutureButton(_ sender: Any) {
    }
    
    
    
    //var numberOfDays = Int.random(in: 2...10)
    
    //var promptLabelMessage1 = "Describe your day \(numberOfDays) days ago"
    
    
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Tell Us Your Story!"
 
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "past" {
            let viewController = segue.destination as! ViewControllersub
            viewController.days = Int.random(in: 2...10)
            viewController.isPast = true
            
        }else if segue.identifier == "future" {
            let viewController = segue.destination as! ViewControllersub
            viewController.days = Int.random(in: 2...10)
            viewController.isPast = false
        }
    }
    
   
    
    
}

