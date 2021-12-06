//
//  CollectionViewCell.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/06.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var collectionNameLabel: UILabel!
    
    func configure(with nameLabel: String) {
        collectionNameLabel.text = nameLabel
    }
    
}

