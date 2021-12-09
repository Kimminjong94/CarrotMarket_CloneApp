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
    @IBOutlet weak var collectionView_3: UICollectionView!
    @IBOutlet weak var collectionView_4: UICollectionView!
    
    var collectionViewOne: [String] = ["알바", "중고차", "붕어빵","네일", "모델", "김치"]
    
    var collectionViewTwo = [UIImage(named: "컬렉션뷰111"), UIImage(named: "컬렉션뷰222"), UIImage(named: "컬렉션뷰333"), UIImage(named: "컬렉션뷰444"), UIImage(named: "컬렉션뷰555"), UIImage(named: "컬렉션뷰666"), UIImage(named: "컬렉션뷰777"), UIImage(named: "컬렉션뷰8888")]
    
    var collectionViewThree = [UIImage(named: "쿠폰111"), UIImage(named: "쿠폰111"), UIImage(named: "쿠폰111"), UIImage(named: "쿠폰111"), UIImage(named: "쿠폰111")]
        
    var collectionViewFour = [UIImage(named: "추천가게111"), UIImage(named: "추천가게111"), UIImage(named: "추천가게111"), UIImage(named: "추천가게111")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .label
        configureItem()
        collectionView_1.register(UINib(nibName: "LocationCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "LocationCollectionViewCell")
        collectionView_2.delegate = self
        collectionView_2.dataSource = self
        collectionView_3.delegate = self
        collectionView_3.dataSource = self
        collectionView_4.delegate = self
        collectionView_4.dataSource = self
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
        if collectionView == self.collectionView_1 {
            return collectionViewOne.count
        } else if collectionView == self.collectionView_2 {
            return collectionViewTwo.count
        } else if collectionView == self.collectionView_3 {
            return collectionViewThree.count
        }
        return collectionViewFour.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView_1 {
            let cellOne = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
            cellOne.collectionCell_One.text = collectionViewOne[indexPath.row]
            return cellOne
        }
        else if collectionView == self.collectionView_2 {
            let cellTwo = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
            cellTwo.collectionCell_Two.image = collectionViewTwo[indexPath.row]
            return cellTwo
        }
        else if collectionView == self.collectionView_3 {
            let cellThree = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
            cellThree.collectionCell_Three.image = collectionViewThree[indexPath.row]
            return cellThree
        }
        else {
            let cellFour = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
            cellFour.collectionCell_Four.image = collectionViewFour[indexPath.row]
            return cellFour
        }
        
    }
    
    
    
}
