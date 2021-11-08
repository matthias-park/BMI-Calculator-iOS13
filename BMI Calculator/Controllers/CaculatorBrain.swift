//
//  CaculatorBrain.swift
//  BMI Calculator
//
//  Created by JUNSOO PARK on 2021-11-07.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float ) {
        bmi = weight / pow(height, 2)
    }
}
