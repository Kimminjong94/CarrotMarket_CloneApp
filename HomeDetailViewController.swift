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
    
    var name = ""
    var price: Int?
//    var img: UIImage? = UIImage(named: "")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetailProductName?.text = name
        DetailProductPrice?.text = "\(price)원"
        DetailImageMain.image = UIImage(named: name)
        
    }

    }



