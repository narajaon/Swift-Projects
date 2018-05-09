//
//  AddViewController.swift
//  deathNote
//
//  Created by RAJAONARISON on 07/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var desc: UITextView!
    
    var victimAdded = Victim(name: "", desc: "", death: "")
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "victimAdded" {
            victimAdded.death = self.date.date.description
            victimAdded.desc = self.desc.text
            victimAdded.name = self.name.text!
        }
    }
    
    @IBAction func toDeathNote(_ sender: Any) {
        performSegue(withIdentifier: "victimAdded", sender: self)
    }
}
