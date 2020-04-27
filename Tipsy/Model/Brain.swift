//
//  Brain.swift
//  Tipsy
//
//  Created by Yazan Almatar on 4/25/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct Brain {
    var tipPercentage:Int? = 10
    var splitCount:Int? = 2
    var billTotal:Float?
    var totalPerPerson:Float?
    
    func getTipPercenetage() -> Int {
        return tipPercentage ?? 0
    }
    func getSplitCount() -> Int {
        return splitCount ?? 0
    }
    mutating func setTipPercentage( per percentage:Int) {
        tipPercentage = percentage
    }
    mutating func setSplitCount(count:Int) {
        splitCount = count
    }
    mutating func setBillTotal(total:Float) {
        billTotal = total
    }
    mutating func calculateTotalPerPerson(){
        if tipPercentage != nil && splitCount != nil && billTotal != nil {
            totalPerPerson = (billTotal! + ((billTotal! * 10) / 100)) / Float(splitCount!)
        }
    }
    func getTotalPerPerson() -> Float {
        return totalPerPerson ?? 0
    }
    
}
