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
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var name:String = ""
    var price: String = ""
    var desc: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetailProductName.text = name
        DetailProductPrice.text = price
        descriptionLabel.text = desc
//        DetailImageMain.image = UIImage(named: name)
        
    }

    }



