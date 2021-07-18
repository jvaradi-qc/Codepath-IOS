//
//  ViewController.swift
//  Prework_jvaradi
//
//  Created by JOHN VARADI on 7/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        // Get Total tip by multiplying bill * tipPercentages, then adding bill + tip
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill =  Double(billAmountTextField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    

}

