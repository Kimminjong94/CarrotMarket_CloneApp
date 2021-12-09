//
//  DynamicTableViewCell.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/07.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("tableviewcell awakeNib called")
    }

}
