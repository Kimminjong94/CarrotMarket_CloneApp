//
//  HomeDetailViewController.swift
//  
//
//  Created by 김민종 on 2021/12/05.
//

import UIKit

class HomeDetailViewController: UIViewController {
    
    
    @IBOutlet weak var DetailImageMain: UIImageView!
    
    @IBOutlet weak var DetailProductName: UILabel!
    
    @IBOutlet weak var DetailProductPrice: UILabel!
    
//    var imageUrl: String?
    var name: String? = ""
    
    func updateUI(cellData: 상품구성항목) {
        let name = cellData.name
        let price = cellData.price
        let image = cellData.productImage

        self.DetailProductName?.text = name
        self.DetailProductPrice?.text = "\(price)원"
        self.DetailImageMain?.image = image

    }
    

    

    override func viewDidLoad() {
        super.viewDidLoad()

        DetailProductName.text = name



    }
    

}
