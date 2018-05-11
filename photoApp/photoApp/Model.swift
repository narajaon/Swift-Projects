//
//  Model.swift
//  photoApp
//
//  Created by RAJAONARISON on 11/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import Foundation

class ImgData {
    var name: String
    var source: String
    static let imgCount = Galery.count
    static var imgLoaded = 0
    
    init(name: String, source : String) {
        self.name = name
        self.source = source
    }
}

let Galery: [ImgData] = [
    ImgData(name: "Lion", source: "https://images8.alphacoders.com/712/712496.jpg"),
    ImgData(name: "Space", source: "https://www.wallpaperup.com/uploads/wallpapers/2015/03/06/633001/e451afd64ff8e4a793d8b5f009816cee.jpg"),
    ImgData(name: "Fractal", source: "https://wallpaper.wiki/wp-content/uploads/2017/05/wallpaper.wiki-Fractal-Background-Download-Free-PIC-WPE007453.jpg"),
    ImgData(name: "Batman", source: "https://wallpaper.wiki/wp-content/uploads/2017/06/Ultra-HD-4K-Batman-Wallpapers.jpg"),
    ImgData(name: "Test", source: "Googlelol")
]
