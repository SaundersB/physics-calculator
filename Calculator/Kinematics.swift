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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displacement_button.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}