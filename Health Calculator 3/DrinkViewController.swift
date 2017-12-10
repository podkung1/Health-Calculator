//
//  DrinkViewController.swift
//  Health Calculator 3
//
//  Created by Pod on 11/5/60.
//  Copyright © พ.ศ. 2560 Pod. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController {

    @IBOutlet weak var weight2: UITextField!
    
    @IBOutlet weak var Ans3: UILabel!
    
    @IBOutlet weak var Ans3s: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Cal2(_ sender: AnyObject) {
        let w2 = Double(weight2.text!)
        let drink = (w2!*2.2*30)/2
        Ans3.text = String(format:"%.0f",drink)+" มิลลิลิตร"
        let glass = round(drink/200)
        Ans3s.text = "หรือ ประมาณ "+String(format:"%.0f",glass)+" แก้ว"
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
