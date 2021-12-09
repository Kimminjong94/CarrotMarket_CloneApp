//
//  Do.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/09.
//

import UIKit

struct Do: Equatable, Codable {
    var isDone: Bool
    var detail: String
    
    mutating func update(isDone: Bool, detail: String) {
        self.isDone = isDone
        self.detail = detail
    }
    
}
