//
//  ViewController.swift
//  myapp
//
//  Created by Aly Traore on 12/14/18.
//  Copyright © 2018 Aly Traore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabell: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
        
    
    }
    @IBAction func CalculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        TipLabell.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

