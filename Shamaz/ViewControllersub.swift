//
//  ViewControllersub.swift
//  Shamaz
//
//  Created by zsolt on 23/10/2018.
//  Copyright © 2018 zsolt. All rights reserved.
//

import UIKit

class ViewControllersub: UIViewController {

    @IBOutlet weak var promtLabel: UILabel!
    
    var isPast: Bool!

// dismiss this view (ViewControllersub)
    @IBAction func whoIsNextButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

// load the chosen description
        if isPast {
            promtLabel.text = "Describe one funny moment from your last \(Int.random(in: 2...7) ) days"
        } else {
            promtLabel.text = "What is your plan for the next \(Int.random(in: 2...7) ) days?"
        }
        
    }
    
}
