//
//  LocationViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import UIKit

class LocationViewController: UIViewController {
    @IBOutlet weak var collectionView_1: UICollectionView!
    
    @IBOutlet weak var collectionView_2: UICollectionView!
    
    var collectionViewOne: [String] = ["알바", "중고차", "붕어빵","네일", "모델", "김치"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .label
        configureItem()
        collectionView_1.register(UINib(nibName: "LocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LocationCollectionViewCell")
        collectionView_2.register(UINib(nibName: "LocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LocationCollectionViewCell")

    }
    
    private func configureItem() {
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                image: UIImage(systemName: "bell"),
                style: .done,
                target: self,
                action: nil
            ),
            UIBarButtonItem(
                image: UIImage(systemName: "qrcode"),
                style: .done,
                target: self,
                action: nil
                ),
            UIBarButtonItem(
                image: UIImage(systemName: "pencil"),
                style: .done,
                target: self,
                action: nil
                )
        ]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "내 근처", style: .done, target: self, action: nil)
    }


}

extension LocationViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.collectionViewOne.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
        cell.collectionCell_One.text = collectionViewOne[indexPath.row]
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: (collectionView.frame.width-4)/2, height: 100)
//    }
    
    
}
