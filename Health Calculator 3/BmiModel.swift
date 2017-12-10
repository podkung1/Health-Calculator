//
//  BmiModel.swift
//  Health Calculator 3
//
//  Created by Pod on 23/4/60.
//  Copyright © พ.ศ. 2560 Pod. All rights reserved.
//

import Foundation
class BmiModel {
    var weight1 : Double
    var height1 : Double
    
    init (weight1:Double,height1:Double){
        self.weight1=weight1
        self.height1=height1
    }
    func bmi()->Double {
        return weight1/((height1/100)*(height1/100))
    }
    
}
