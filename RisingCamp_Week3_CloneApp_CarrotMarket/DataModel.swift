//
//  DataModel.swift
//  
//
//  Created by 김민종 on 2021/12/05.
//

import Foundation

class DataModel {
    
    private var storage: [상품구성항목]
    
    public var count: Int {
        self.storage.count
    }
    
    public func itemAt(row: Int) -> 상품구성항목 {
        return storage[row]
    }
    
    init(storage: [상품구성항목]) {
        self.storage = storage
    }
}
