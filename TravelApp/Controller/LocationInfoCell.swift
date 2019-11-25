//
//  LocationInfoCell.swift
//  TravelApp
//
//  Created by Sinan MacBook on 25.11.2019.
//  Copyright © 2019 Sinan MacBook. All rights reserved.
//

import UIKit

class LocationInfoCell: UICollectionViewCell {
    @IBOutlet weak var locationImage: UIImageView!
    
    
    override func awakeFromNib() {
        locationImage.layer.cornerRadius = 15
        locationImage.clipsToBounds = true
    }
}
