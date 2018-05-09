//
//  ImageCollectionViewCell.swift
//  photoApp
//
//  Created by RAJAONARISON on 09/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var galeryImage: UIImageView!
    @IBOutlet weak var galeryImageName: UILabel!
    
    func displayCellContent(image: UIImage, name: String) {
        galeryImage.image = image
        galeryImageName.text = name
    }
}
