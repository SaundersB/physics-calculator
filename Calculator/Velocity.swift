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
    
    @IBOutlet weak var initial_velocity_label: UILabel!
    @IBOutlet weak var time_label: UILabel!
    @IBOutlet weak var acceleration_label: UILabel!
    
    @IBOutlet weak var initial_velocity_field: UITextField!
    @IBOutlet weak var time_field: UITextField!
    @IBOutlet weak var acceleration_field: UITextField!
    
    @IBOutlet weak var displacement_field: UITextField!
    
    @IBOutlet weak var clear_button: UIButton!
    @IBOutlet weak var calculate_button: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        velocity_header.textAlignment = NSTextAlignment.center;
        velocity_header.font = UIFont (name: "Helvetica Neue", size: 30)
        
        initial_velocity_field.text = "0.0"
        time_field.text = "0.0"
        acceleration_field.text = "0.0"
        displacement_field.text = "0.0"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func compute_velocity(_ sender: AnyObject) {
        // v0 = x/t - ½at
        var initial_velocity = 0.0
        let time = Double(time_field.text!)
        let acceleration = Double(acceleration_field.text!)
        let displacement = Double(displacement_field.text!)
        
        let alert = UIAlertController(title: "Alert", message: "Please input at least two values", preferredStyle: UIAlertControllerStyle.alert)
        
        if (time == 0 && acceleration == 0 || time == 0 && displacement == 0 || acceleration == 0 && displacement == 0){
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        initial_velocity = (displacement! / time!) - (0.5 * acceleration! * time!)
        
        initial_velocity_field.text = String(initial_velocity)
    }
    
    @IBAction func clear_results(_ sender: AnyObject) {
        
        initial_velocity_field.text = ""
        time_field.text = ""
        acceleration_field.text = ""
        displacement_field.text = ""
    }
}
