//
//  Velocity.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/4/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import Foundation
import UIKit

class Velocity: UIViewController {
    
    @IBOutlet weak var velocity_header: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        velocity_header.textAlignment = NSTextAlignment.Center;
        velocity_header.font = UIFont (name: "Helvetica Neue", size: 30)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}