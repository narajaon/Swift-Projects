//
//  ViewController.swift
//  deathNote
//
//  Created by RAJAONARISON on 26/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Victim.victimList.count
    }
    
    func addDefaultCell() {
        let defaultCell = Victim(name: "Placeholder", desc: "RIP", date: "Friday 13th")
        var victimList = Victim.victimList
        
        if (victimList.count == 0) {
            victimList.append(defaultCell)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "victimCell")
        
        cell?.textLabel?.text = Victim.victimList[0].name
        
        return cell!
    }
    
}

