//
//  ViewController.swift
//  ios-hw-3
//
//  Created by ghanima on 9/30/20.
//  Copyright © 2020 ghanima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var StatusLabel: UILabel!
    @IBOutlet weak var calculatebutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatebutton.layer.cornerRadius = 10
               calculatebutton.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    @IBAction func calButton(_ sender: Any) {
        
        
        let bmi = myresult().rounded()
        BmiLabel.text = String(bmi);
        if bmi <= 20{
            StatusLabel.text = "ضعيف"
            StatusLabel.textColor = UIColor.green
        }
        else if bmi < 25{
            StatusLabel.text = "جيد"
             StatusLabel.textColor = UIColor.orange
        }
        else if bmi > 25{
            StatusLabel.text = "سمين"
             StatusLabel.textColor = UIColor.red
        }
        else{
            StatusLabel.text = "خطأ"
             StatusLabel.textColor = UIColor.black
        }

    }
    
    func myresult()->Double{
        let h = Double(heightField.text!)!;
        let w = Double(weightField.text!)!;
        let result = (h/w)*100 ;
        return result;
    }
    

}

