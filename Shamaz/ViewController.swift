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
    
// label where the players are invited to tell their story
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    
// load the view with updated number of player
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        welcomeMessageLabel.text = "Tell Us Your Story Player \(Int.random(in: 1...totalPlayers))"
    }
       

// button for choosing to reflect on the past and for pass to the next view
    @IBAction func reflectOnThePastButton(_ sender: Any) {
    }
    
// button for choosing to dream for the future and for pass to the next view
    @IBAction func dreamOnTheFutureButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

// set segue for passing to next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "past" {
            let viewController = segue.destination as! ViewControllersub
            viewController.isPast = true
            
        } else if segue.identifier == "future" {
            let viewController = segue.destination as! ViewControllersub
            viewController.isPast = false
        }
    }

// set alert window to check if the player really want to quit 
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

