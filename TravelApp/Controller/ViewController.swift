//
//  ViewController.swift
//  TravelApp
//
//  Created by Sinan MacBook on 25.11.2019.
//  Copyright © 2019 Sinan MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var locationArray : [String] = ["1","1","1","1","1","1","1","1","1","1","1","1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        spacingCollectionViewCell()
    }

    
    //Number of Views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LocationInfoCell
        cell.locationImage.image = UIImage(named: locationArray[indexPath.row] + ".png")
        
        return cell

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    func spacingCollectionViewCell() {
        //let itemSize = UIScreen.main.bounds.width/2 - 10
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        
        //layout.itemSize = CGSize(width: itemSize, height: itemSize + UIScreen.main.bounds.height / 10)
        
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        collectionView.collectionViewLayout = layout
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width/2 - 10
        var height = UIScreen.main.bounds.width/3 + UIScreen.main.bounds.height / 10
        
        if indexPath.row % 7 == 0 || indexPath.row == 1 {
            height = height * 2
        }
        
        return CGSize(width: width,height:  height )
        
    }

}

