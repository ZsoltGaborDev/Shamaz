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
        welcomeMessageLabel.text = "Tell Us Your Story Player \(Int.random(in: 1...totalPlayers))"
    }
       

    @IBAction func reflectOnThePastButton(_ sender: Any) {
    }
    
    
    @IBAction func dreamOnTheFutureButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Tell Us Your Story!"
 
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "past" {
            let viewController = segue.destination as! ViewControllersub
            viewController.days = Int.random(in: 2...7)
            viewController.isPast = true
            
        }else if segue.identifier == "future" {
            let viewController = segue.destination as! ViewControllersub
            viewController.days = Int.random(in: 2...7)
            viewController.isPast = false
        }
    }
    
    @IBAction func quit() {
        let alert = UIAlertController(title: "Quit?", message: "Are you sure you want to quit?", preferredStyle: .alert)
        let yes = UIAlertAction(title: "Yes", style: .destructive) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        let no = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alert.addAction(yes)
        alert.addAction(no)
        present(alert, animated: true, completion: nil)
    }
    
    
}

