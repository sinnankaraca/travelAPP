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

        
        //CollectionViewLayout adjustments have been made.
        spacingCollectionViewCell()
    }

    
    //Number of Views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationArray.count
    }
    
    //CollectionViewCell adjustments
    //Image in each cell has been changed with this function
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LocationInfoCell
        cell.locationImage.image = UIImage(named: locationArray[indexPath.row] + ".png")
        
        return cell

    }
    
    //Is the picture selected ?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "showInfoScreen", sender: nil)
        print(indexPath.row)
    }
    
    //CollectionViewCell spacing adjustments
    func spacingCollectionViewCell() {
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        collectionView.collectionViewLayout = layout
        
    }
    
    // Cell weight and height have been adjusted with this fucntion
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width/2 - 10
        let height = UIScreen.main.bounds.width/3 + UIScreen.main.bounds.height / 10
        return CGSize(width: width, height:  height)
        
    }
    
    // segue data transfer fucntion
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? InfoViewController {
            destVC.passedData = 1
        }
        
    }

}

