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
    

    @IBAction func whoIsNextButton(_ sender: Any) {
     
     // welcomeMessageLabel = " The Next Is The Player Number \(randomNumberPlayer)"
    }
    
    var randomNumberPlayer = Int.random(in: 1...9)
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
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
