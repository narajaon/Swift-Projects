//
//  ViewController.swift
//  helloWorld
//
//  Created by RAJAONARISON on 17/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var aLabel: UILabel!
    
    @IBAction func helloButton(_ sender: Any) {
        aLabel.text = "Hello World !";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

