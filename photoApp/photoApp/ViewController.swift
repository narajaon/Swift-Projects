//
//  ViewController.swift
//  photoApp
//
//  Created by RAJAONARISON on 07/05/2018.
//  Copyright © 2018 narajaon. All rights reserved.
//

import UIKit

func addImgFromURLToCell(source: String, cell: ImageCollectionViewCell, cellName : String) -> Bool {
    let imgURL = URL(string: source)!
    var retValue = true

    UIApplication.shared.isNetworkActivityIndicatorVisible = true
    
    //Dispatch loading through multiple threads
    DispatchQueue.global(qos: .userInitiated).async {
        if let imgData = NSData(contentsOf: imgURL) {
            ImgData.imgLoaded += 1
            
            DispatchQueue.main.async {
                let img = UIImage(data: imgData as Data)
                
                //Manage network activity monitor
                if ImgData.imgLoaded == ImgData.imgCount {
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                }
                
                cell.displayCellContent(image: img!, name: cellName)
            }
        } else {
            retValue = false
        }
    }
    return retValue
}

class GaleryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var galeryCollectionView: UICollectionView!
    let imgCount = ImgData.imgCount
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = galeryCollectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! ImageCollectionViewCell
        let imageName = Galery[indexPath.row].name
        let imageSource = Galery[indexPath.row].source
    
        if addImgFromURLToCell(source: imageSource, cell: collectionCell, cellName: imageName) == false {
            ImgData.imgLoaded += 1
            let alert = UIAlertController(title: "Error", message: "Could not load \(imageName)", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        return collectionCell
    }
}
