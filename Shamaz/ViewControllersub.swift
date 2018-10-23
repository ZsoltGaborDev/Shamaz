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
    var days: Int!
    var isPast: Bool!

    @IBAction func whoIsNextButton(_ sender: Any) {
     
     //promtLabel.text = " The Next Is The Player Number \(randomNumberPlayer)"
    }
    
    var randomNumberPlayer = Int.random(in: 1...9)
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if isPast {
            promtLabel.text = "Describe your day \(Int.random(in: 2...10) ) days ago"
        } else {
            promtLabel.text = "Describe your day in the next \(Int.random(in: 2...10) ) days"
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
