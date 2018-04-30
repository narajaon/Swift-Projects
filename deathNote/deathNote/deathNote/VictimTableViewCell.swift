//
//  VictimTableViewCell.swift
//  deathNote
//
//  Created by RAJAONARISON on 27/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class VictimTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var name: UILabel!
    
    var victimClass : Victim? {
        didSet {
            if let v = victimClass {
                name.text = v.name
                desc.text = v.desc
                date.text = v.date
            }
        }
    }
    
}
