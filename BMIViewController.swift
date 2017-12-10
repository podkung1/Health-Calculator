//
//  BMIViewController.swift
//  Health Calculator 3
//
//  Created by Pod on 23/4/60.
//  Copyright © พ.ศ. 2560 Pod. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController {


    @IBOutlet weak var weight1: UITextField!
    
    @IBOutlet weak var height1: UITextField!
    
    @IBOutlet weak var ans1: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cal1(_ sender: AnyObject) {
        let w1 = Double(weight1.text!)
        let h1 = Double(height1.text!)
        let BMI = BmiModel(weight1:w1!,height1:h1!)
        ans1.text = String(format:"%.2f",BMI.bmi())
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
