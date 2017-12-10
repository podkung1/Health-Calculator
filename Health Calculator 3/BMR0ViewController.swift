//
//  BMR0ViewController.swift
//  Health Calculator 3
//
//  Created by Pod on 15/5/60.
//  Copyright © พ.ศ. 2560 Pod. All rights reserved.
//

import UIKit

class BMR0ViewController: UIViewController {
    
    
    @IBOutlet weak var swithgender: UISegmentedControl!
    @IBOutlet weak var weight44: UITextField!
    @IBOutlet weak var height44: UITextField!
    @IBOutlet weak var age44: UITextField!
 
    @IBOutlet weak var ans44: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cal44(_ sender: AnyObject) {
        let w44 = Double(weight44.text!)
        let h44 = Double(height44.text!)
        let a44 = Double(age44.text!)
        var bmr44 = 0.0
        
        if swithgender.selectedSegmentIndex == 0 {
            bmr44 = 66+(13.7*w44!)+(5*h44!)-(6.8*a44!)
        }
        else {
            bmr44 = 665+(9.6*w44!)+(1.8*h44!)-(4.7*a44!)
        }
        ans44.text = "เผาผลาญพื้นฐานวันละ "+String(format:"%.0f",bmr44)+" Cal"
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
