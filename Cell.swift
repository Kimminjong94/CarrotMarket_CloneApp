//
//  Cell.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import Foundation
import UIKit

class Cell {
    
    var imageName: String
    var title: String
    var description: String
    var location: String
    
    init(imageName: String, title: String, description: String, location: String) {
        self.imageName = imageName
        self.title = title
        self.description = description
        self.location = location
    }
}
