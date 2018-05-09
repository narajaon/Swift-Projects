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

var VictimList : [Victim] = []

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func unWindSegue(segue: UIStoryboardSegue) {
        if segue.identifier == "victimAdded" {
            if let vc = segue.source as? AddViewController {
                VictimList.append(vc.victimAdded)
            }
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return VictimList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "victimCell") as! VictimTableViewCell
        
        cell.proto = VictimList[indexPath.row]
        return cell
    }
}

