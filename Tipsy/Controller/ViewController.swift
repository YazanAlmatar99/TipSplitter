//
//  ViewController.swift
//  Tipsy
//
//  Created by Yazan Almatar on 04/25/2020.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var brain = Brain()
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var twenty: UIButton!
    
    @IBOutlet weak var billTotalText: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
         view.addGestureRecognizer(tap)
//        brain.setTipPercentage(per: 10)
//        brain.setSplitCount(count: 2)
    }
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let billTotal = billTotalText.text
        brain.setBillTotal(total: Float(billTotal!) ?? 0.0)
        brain.calculateTotalPerPerson()
        self.performSegue(withIdentifier: "goToResults", sender: self)
//        print(brain.getTipPercenetage())
//        print(brain.getSplitCount())

    }
    
    @IBAction func percentageButton(_ sender: UIButton) {
        let percentage = sender.currentTitle!.replacingOccurrences(of: "%", with: "")
        brain.setTipPercentage(per:Int(percentage) ?? 0)
        zero.isSelected = false
        ten.isSelected = false
        twenty.isSelected = false
        sender.isSelected = true
        
    }
     
    @IBAction func countStepper(_ sender: UIStepper) {
        print(sender.value)
        countLabel.text = String(Int(sender.value))
        brain.setSplitCount(count:Int(sender.value))
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if segue.identifier == "goToResults" {
              let destinationVC = segue.destination as! ResultsCalculator
            destinationVC.totalPerPerson = brain.getTotalPerPerson()
            destinationVC.splitCount = brain.getSplitCount()
            destinationVC.tipPercentage = brain.getTipPercenetage()
          }
      }
    
    
}

