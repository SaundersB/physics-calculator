//
//  Kinematics.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/4/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import Foundation
import UIKit

class Kinematics: UIViewController {
    
    @IBOutlet weak var displacement_button: UIButton!
    @IBOutlet weak var velocity_button: UIButton!
    
    @IBOutlet weak var kinematic_header: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displacement_button.layer.cornerRadius = 5
        velocity_button.layer.cornerRadius = 5
        //kinematic_header.font = UIFont (name: "Helvetica Neue", size: 30)
        //kinematic_header.textAlignment = NSTextAlignment.center;

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
