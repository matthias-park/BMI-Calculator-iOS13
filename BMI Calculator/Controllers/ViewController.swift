//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightslider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2f" + "m", sender.value)
//        print(String(format:"%.2f", sender.value))
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format:"%.0f" + "kg", sender.value)
//        print(Int(sender.value))

    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightslider.value
        let height = heightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
}

