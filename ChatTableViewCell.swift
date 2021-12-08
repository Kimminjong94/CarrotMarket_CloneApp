//
//  ChatTableViewCell.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellNameLabel: UILabel!
    @IBOutlet weak var cellDescriptionLabel: UILabel!
    @IBOutlet weak var cellLocationLabel: UILabel!
    
    
    func setCell(cell: Cell) {
        self.cellNameLabel.text = cell.title
        self.cellDescriptionLabel.text = cell.description
        self.cellLocationLabel.text = cell.location
        self.cellImageView.image = UIImage(named: cell.imageName)
    }
    
    

}
