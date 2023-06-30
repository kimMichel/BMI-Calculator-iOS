//
//  CalculatorBraini.swift
//  BMI Calculator
//
//  Created by Michel Jaejin Kim on 30/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue = "0.0"
    
    func getBmiValue() -> String {
        return bmiValue
    }
    
    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let bmi = weight / powf(height, 2)
        bmiValue = String(format: "%.2f", bmi)
    }
}
