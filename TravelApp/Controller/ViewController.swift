//
//  ViewController.swift
//  TravelApp
//
//  Created by Sinan MacBook on 25.11.2019.
//  Copyright © 2019 Sinan MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let locationArray : [String] = ["1","1","1","1","1","1","1","1","1","1","1","1"]

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
    func spacingCollectionViewCell() {
        let itemSize = UIScreen.main.bounds.width/2 - 10
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        
        layout.itemSize = CGSize(width: itemSize, height: itemSize + UIScreen.main.bounds.height / 10)
        
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        collectionView.collectionViewLayout = layout
        
    }

}

