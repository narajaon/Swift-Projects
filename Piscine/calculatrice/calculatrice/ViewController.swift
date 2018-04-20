//
//  ViewController.swift
//  calculatrice
//
//  Created by RAJAONARISON on 17/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printedInputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func outputPressedButton(_ sender: UIButton) {
        let concatOutput = printedInputLabel.text
        var finalOutput: String
        
        if (concatOutput == "0") {
            printedInputLabel.text = sender.currentTitle
            return
        }
        
        finalOutput = sender.currentTitle!
        finalOutput += concatOutput!
        printedInputLabel.text = finalOutput
    }
    
    @IBAction func formatOuputNumberr(_ sender: UIButton) {
        var negativNumber: String
        
        negativNumber = "-"
        if (sender.currentTitle == "AC") {
            printedInputLabel.text = "0"
        }
        else if (sender.currentTitle == "NEG"){
            negativNumber += printedInputLabel.text!
            printedInputLabel.text = negativNumber
        }
    }
}

