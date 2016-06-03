//
//  ViewController.swift
//  Calculator
//
//  Created by Brandon_Saunders on 6/2/16.
//  Copyright © 2016 Brandon Saunders. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        calculator.text = "Ohm's Law Calculator"
        calculator.textAlignment = NSTextAlignment.Center;
        
        resistance_field.keyboardType = .NumberPad
        voltage_field.keyboardType = .NumberPad
        current_field.keyboardType = .NumberPad

        resistance_label.text = "Resistance"
        voltage_label.text = "Voltage"
        current_label.text = "Current"
        
        resistance_label.textAlignment = NSTextAlignment.Left;
        voltage_label.textAlignment = NSTextAlignment.Left;
        current_label.textAlignment = NSTextAlignment.Left;
        
        resistance_field.text = "0"
        voltage_field.text = "0"
        current_field.text = "0"
        
        calculate_button.setTitle("Calculate", forState: UIControlState.Normal)
        clear_button.setTitle("Clear", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonPress(sender: AnyObject) {
        calculate()
    }
    
    func calculate(){
        // V = I * R
        let resistance = Int(resistance_field.text!)
        let voltage = Int(voltage_field.text!)
        let current = Int(current_field.text!)
        
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
    
    @IBAction func clearResults(sender: AnyObject) {
        resistance_field.text = "0"
        voltage_field.text = "0"
        current_field.text = "0"
    }
    
}





