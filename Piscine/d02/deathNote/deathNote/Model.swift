//
//  Model.swift
//  deathNote
//
//  Created by RAJAONARISON on 25/04/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import Foundation

struct personToKill {
    var name : String
    var description : String
    var deathDate : Date
}

var listTokill : [personToKill] = [personToKill(name : "FOO", description : "BAR", deathDate : Date(timeIntervalSinceNow: 85000))]
