//
//  ViewController.swift
//  deathNote
//
//  Created by RAJAONARISON on 25/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var whenLabel: UILabel!
    let aPerson = listTokill[0]
    
    func initPerson() {
        nameLabel.text = aPerson.name
        descriptionLabel.text = aPerson.description
        whenLabel.text = aPerson.deathDate.description
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTokill.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "victimCell")
        return cell!
    }
}
