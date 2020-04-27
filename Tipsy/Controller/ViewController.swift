//
//  ViewController.swift
//  Tipsy
//
//  Created by Yazan Almatar on 04/25/2020.
//  Copyright © 2020 Yazan Almatar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billTotalText: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
       
    }
    
    @IBAction func percentageButton(_ sender: UIButton) {
        print(sender.currentTitle!)
    }
     
    @IBAction func countStepper(_ sender: UIStepper) {
        print(sender.value)
        countLabel.text = String(Int(sender.value))
    }
    
}

