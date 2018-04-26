//
//  Model.swift
//  deathNote
//
//  Created by RAJAONARISON on 26/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import Foundation

class Victim {
    var name : String
    var desc : String
    var date : String
    
    init (name : String, desc : String, date : String) {
        self.name = name
        self.desc = desc
        self.date = date
    }
    
    static var victimList : [Victim] = []
}
