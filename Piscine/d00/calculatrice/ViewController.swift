//
//  ViewController.swift
//  calculatrice
//
//  Created by RAJAONARISON on 17/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

func doOperation(_ a: Int, _ b: Int, _ oper: String) -> Int {
    switch oper {
    case "+" :
        return a &+ b
    case "-" :
        return a &- b
    case "*" :
        return a &* b
    case "/" :
        return a / b
    default :
        return 0
    }
}

struct OperStruct {
    var previousValue = 0
    var oper: String?
}

class ViewController: UIViewController {
    var currentOper = OperStruct()
    var isInputMode = false
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
        let concatOutput = printedInputLabel.text!
        var finalOutput: String
        
        if (concatOutput == "0" || isInputMode == false) {
            printedInputLabel.text = sender.currentTitle
            isInputMode = true
            return
        }
        
        finalOutput = sender.currentTitle!
        finalOutput = concatOutput + finalOutput
        printedInputLabel.text = finalOutput
    }
    
    @IBAction func formatOuputNumberr(_ sender: UIButton) {
        var negativNumber: String
        
        negativNumber = "-"
        if (sender.currentTitle == "AC") {
            printedInputLabel.text = "0"
            currentOper.previousValue = 0
            currentOper.oper = nil
        }
        else if (sender.currentTitle == "NEG" && printedInputLabel.text != "0"){
            negativNumber += printedInputLabel.text!
            printedInputLabel.text = negativNumber
        }
    }

    @IBAction func doOperationButton(_ sender: UIButton) {
        let currentValue = Int(printedInputLabel.text!)
        let result: Int
        
        if (currentOper.oper != nil) {
            if (currentOper.oper == "/" && currentValue == 0) {
                // Handle floating point exception
                result = 0
            } else {
                result = doOperation(currentOper.previousValue, currentValue!, currentOper.oper!)
            }
            printedInputLabel.text = String(result)
            currentOper.previousValue = result
        }
        else {

            currentOper.previousValue = currentValue!
        }
        if (sender.currentTitle != "=") {
            currentOper.oper = sender.currentTitle
        }
        isInputMode = false
    }
}
