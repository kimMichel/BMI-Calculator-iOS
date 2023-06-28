//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height = 1.5
    var weight = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        height = Double(sender.value)
        updateUI()
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weight = Int(sender.value)
        updateUI()
    }
    
    func updateUI() {
        let height = String(format: "%.2f", height)
        let weight = String(weight)
        
        heightLabel.text = "\(height)m"
        weightLabel.text = "\(weight))Kg"
    }
}

