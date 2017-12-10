//
//  BMRViewController.swift
//  Health Calculator 3
//
//  Created by Pod on 11/5/60.
//  Copyright © พ.ศ. 2560 Pod. All rights reserved.
//

import UIKit

class BMRViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let exerc = ["ไม่ออกกำลังเลย", "ออกกำลัง 1-3 วัน/สัปดาห์", "ออกกำลัง 3-5 วัน/สัปดาห์","ออกกำลัง 6-7 วัน/สัปดาห์","เป็นนักกีฬา"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return exerc.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return exerc[row]
    }
    
    
    @IBOutlet weak var switchGender: UISegmentedControl!
    @IBOutlet weak var weight4: UITextField!
    @IBOutlet weak var height4: UITextField!
    @IBOutlet weak var age4: UITextField!
    
    @IBOutlet weak var ans4: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Exercise.selectRow(2, inComponent: 0, animated: true);

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Exercise: UIPickerView!

    @IBAction func cal4(_ sender: AnyObject) {
        let w4 = Double(weight4.text!)
        let h4 = Double(height4.text!)
        let a4 = Double(age4.text!)
        var bmr4 = 0.0
        var k4 = 0.0
        
        if switchGender.selectedSegmentIndex == 0 {
            bmr4 = 66+(13.7*w4!)+(5*h4!)-(6.8*a4!)
        }
        else {
        bmr4 = 665+(9.6*w4!)+(1.8*h4!)-(4.7*a4!)
        }
        if Exercise.selectedRow(inComponent: 0) == 0 {
            k4 = 1.2
        }
        else if Exercise.selectedRow(inComponent: 0) == 1 {
            k4 = 1.375
        }
        else if Exercise.selectedRow(inComponent: 0) == 2 {
            k4 = 1.55
        }
        else if Exercise.selectedRow(inComponent: 0) == 3 {
            k4 = 1.725
        }
        else {
            k4 = 1.9
        }
        ans4.text = "ใช้พลังงานวันละ "+String(format:"%.0f",bmr4*k4)+" Cal"
        
        print(switchGender.selectedSegmentIndex)
        print(Exercise.selectedRow(inComponent: 0))
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
