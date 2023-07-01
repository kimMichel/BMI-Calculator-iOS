//
//  CalculatorBraini.swift
//  BMI Calculator
//
//  Created by Michel Jaejin Kim on 30/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBmiValue() -> String {
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdviceText() -> String {
        return bmi?.advice ?? "Eat some more snacks!"
    }
    
    func getBackgroundColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    }
    
    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let bmiValue = weight / powf(height, 2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        default:
            print("Invalid BMI value.")
        }
    }
}
