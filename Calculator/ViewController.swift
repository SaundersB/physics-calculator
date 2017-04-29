//
//  ViewController.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/2/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ohms_law_button: UIButton!
    @IBOutlet weak var kinematics_calculator: UIButton!
    @IBOutlet weak var physics_calculators_header: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        ohms_law_button.layer.cornerRadius = 5
        kinematics_calculator.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
