//
//  NavigationBarCollectionViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/06.
//

import UIKit

class NavigationBarCollectionViewController: UICollectionViewController {

    let dataSource: [String] = ["동네질문", "동네맛지", "해주세요", "동네소식", "분실/실종센터", "동네사건사고", "일상", "취미생활", "고양이", "강아지", "건강", "살림"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        if let cc = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? CollectionViewCell {
            cc.configure(with: dataSource[indexPath.row])
            
            cell = cc
        }
        
        return cell
    }
     
     
     override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
          print("select item\(dataSource[indexPath.row])")
     }


}
