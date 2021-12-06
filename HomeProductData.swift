//
//  HomeProductData.swift
//  
//
//  Created by 김민종 on 2021/12/05.
//

import UIKit

class HomeProductData: UITableViewCell {
    @IBOutlet weak var showProductNameLabel: UILabel!
    @IBOutlet weak var showProductPriceLabel: UILabel!
    @IBOutlet weak var showProductImage: UIImageView!
    
    
    

    public func updateUI(cellData: 상품구성항목) {
        let name = cellData.name
        let price = cellData.price
        let image = cellData.productImage
        
        self.showProductNameLabel.text = name
        self.showProductPriceLabel.text = "\(price)원"
        self.showProductImage.image = image

    }
    
    
}
