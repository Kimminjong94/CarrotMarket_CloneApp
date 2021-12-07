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
    
    
    var name:String = ""
    var price:Int = 10
    var img:UIImage? = UIImage(named: "아이폰12")


    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
}
