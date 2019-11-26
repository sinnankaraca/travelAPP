//
//  InfoViewController.swift
//  TravelApp
//
//  Created by Sinan MacBook on 26.11.2019.
//  Copyright © 2019 Sinan MacBook. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    var passedData : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl.text = String(passedData)
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
