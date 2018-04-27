//
//  ViewController.swift
//  deathNote
//
//  Created by RAJAONARISON on 26/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

func addDefaultCell() {
    if (VictimList.count == 0) {
        let defaultCell = Victim(name: "Placeholder", desc: "RIP", date: "Friday 13th")

        VictimList.append(defaultCell)
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        addDefaultCell()
        
        return VictimList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "victimCell") as! VictimTableViewCell

        cell.victimClass = VictimList[indexPath.row]

        return cell
    }
    
    @IBAction func unWindSegue(segue : UIStoryboardSegue) {
        print(segue.identifier ?? "No title")
    }
}
