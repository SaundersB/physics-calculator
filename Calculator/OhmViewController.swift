//
//  OhmViewController.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/2/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import Foundation
import UIKit

class OhmViewController: UIViewController {
    
    @IBOutlet weak var navigation_bar: UINavigationItem!
    @IBOutlet weak var calculator: UILabel!
    
    @IBOutlet weak var resistance_field: UITextField!
    @IBOutlet weak var current_field: UITextField!
    @IBOutlet weak var voltage_field: UITextField!
    
    @IBOutlet weak var calculate_button: UIButton!
    @IBOutlet weak var clear_button: UIButton!
    
    @IBOutlet weak var resistance_label: UILabel!
    @IBOutlet weak var voltage_label: UILabel!
    @IBOutlet weak var current_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        resistance_field.keyboardType = .decimalPad
        voltage_field.keyboardType = .decimalPad
        current_field.keyboardType = .decimalPad
        
        resistance_label.text = "Resistance"
        voltage_label.text = "Voltage"
        current_label.text = "Current"
        
        resistance_label.font = UIFont (name: "Helvetica Neue", size: 14)
        voltage_label.font = UIFont (name: "Helvetica Neue", size: 14)
        current_label.font = UIFont (name: "Helvetica Neue", size: 14)
        
        resistance_label.textAlignment = NSTextAlignment.left;
        voltage_label.textAlignment = NSTextAlignment.left;
        current_label.textAlignment = NSTextAlignment.left;
        
        resistance_field.text = "0"
        voltage_field.text = "0"
        current_field.text = "0"
        
        calculate_button.setTitle("Calculate", for: UIControlState())
        clear_button.setTitle("Clear", for: UIControlState())
        calculate_button.layer.cornerRadius = 5
        clear_button.layer.cornerRadius = 5
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonPress(_ sender: AnyObject) {
        calculate()
    }
    
    func calculate(){
        // V = I * R
        let resistance = Float(resistance_field.text!)
        let voltage = Float(voltage_field.text!)
        let current = Float(current_field.text!)
        let alert = UIAlertController(title: "Alert", message: "Please input at least two values", preferredStyle: UIAlertControllerStyle.alert)
        
        if (current == 0 && voltage == 0 || current == 0 && resistance == 0 || resistance == 0 && voltage == 0){
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        else {
            if (current != 0 && voltage != 0) {
                resistance_field.text = String((voltage! / current!))
            }
            if (current != 0 && resistance != 0) {
                voltage_field.text = String((current! * resistance!))
            }
            if (voltage != 0 && resistance != 0) {
                current_field.text = String((voltage! / resistance!))
            }
        }
    }
    
    @IBAction func clearResults(_ sender: AnyObject) {
        resistance_field.text = "0"
        voltage_field.text = "0"
        current_field.text = "0"
    }
}
