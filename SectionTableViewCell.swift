//
//  SectionTableViewCell.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import UIKit

class SectionTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var sectionImageview: UIImageView!
    
    @IBOutlet weak var sectionLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func setSectionName(_ name: String) {
        self.sectionLabelView.text = name
        self.sectionImageview.image = UIImage(named: "")
    }
    
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//    }
    
}
