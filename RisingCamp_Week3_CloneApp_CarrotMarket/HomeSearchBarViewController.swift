//
//  HomeSearchBarViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/04.
//

import UIKit

class HomeSearchBarViewController: UIViewController {

    @IBOutlet var navigationSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        navigationItem.titleView = navigationSearchBar

        
    }
    

}
