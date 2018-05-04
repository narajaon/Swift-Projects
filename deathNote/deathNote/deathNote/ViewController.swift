//
//  ViewController.swift
//  deathNote
//
//  Created by RAJAONARISON on 04/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class Victim {
    var name: String
    var desc: String
    var death: String
    
    init (name: String, desc: String, death: String) {
        self.name = name
        self.desc = desc
        self.death = death
    }
}

let VictimList : [Victim] = [
    Victim(name: "vict1", desc: "death1", death: "date1"),
    Victim(name: "vict2", desc: "death2", death: "date2"),
    Victim(name: "vict3", desc: "death3", death: "date3")
]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "victimCell")
        
        return cell!
    }
    

}

