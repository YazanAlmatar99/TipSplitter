//
//  ResultsCalculator.swift
//  Tipsy
//
//  Created by Yazan Almatar on 4/25/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit
class ResultsCalculator:UIViewController {
    var totalPerPerson:Float?
    var splitCount:Int?
    var tipPercentage:Int?
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPersonLabel.text = String(format:"%.2f",totalPerPerson ?? 0)
           descriptionLabel.text = "Split between \(splitCount ?? 0) people, with \(tipPercentage ?? 0)% tip."
     
    }
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
