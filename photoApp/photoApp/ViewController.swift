//
//  ViewController.swift
//  photoApp
//
//  Created by RAJAONARISON on 07/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

let Galery = [
    "City",
    "Lake",
    "Planet",
    "Waterfall"
]

class GaleryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var galeryCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Galery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = galeryCollectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! ImageCollectionViewCell
        let imageName = Galery[indexPath.row]
        
        collectionCell.displayCellContent(image: UIImage(named: imageName)!, name: imageName)
        return collectionCell
    }
    
    
}
