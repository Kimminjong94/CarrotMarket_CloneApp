//
//  DynamicDetailController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/07.
//

import UIKit

class DynamicDetailController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    
    var name:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = name

        // Do any additional setup after loading the view.
    }
    


}
