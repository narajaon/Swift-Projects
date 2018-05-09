//
//  TableViewCell.swift
//  deathNote
//
//  Created by RAJAONARISON on 07/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class VictimTableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var proto : Victim? {
        didSet {
            if let aCell = proto {
                self.name.text = aCell.name
                self.date.text = aCell.death
                self.desc.text = aCell.desc
            }
        }
    }
}
