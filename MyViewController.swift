//
//  MyViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sectionCell: [[String]] = [["내 동네 설정", "동네 인증하기", "키워드알림", "당근가계부", "모아보기", "관심 카테고리 설정"], ["동네생활 글","동네생활 댓글"],["비즈프로필 만들기", "동네홍보 글", "지역광고"], ["친구초대", "당근마켓 공유", "공지사항", "자주묻는질문", "앱설정"]]
    
    var myImages = ["세팅1", "세팅2", "세팅3", "세팅4", "세팅5", "세팅6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .label
        configureItem()
        
        tableView.tableFooterView = UIView(frame:  .zero)
        tableView.register(UINib(nibName: "SectionTableViewCell", bundle: nil), forCellReuseIdentifier: "SectionTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    private func configureItem() {
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                image: UIImage(systemName: "sun.max.circle"),
                style: .done,
                target: self,
                action: nil
            )
        ]
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "나의 당근",
            style: .done,
            target: self,
            action: nil
        )
    }
    
//    func createDataSource() -> [SectionCell] {
//
//        var sectioncell: [SectionCell] = []
//
//        let cell1 = SectionCell(imageName: "세팅1" , title: "내 동네 설정")
//        let cell2 = SectionCell(imageName: "세팅2" , title: "내 동")
//
//
//        sectioncell.append(cell1)
//        sectioncell.append(cell2)
//
//
//        return sectioncell
//    }

}

extension MyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionCell.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionCell[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionTableViewCell") as! SectionTableViewCell
        
        let item = myImages[indexPath.row]
        cell.sectionLabelView?.text = sectionCell[indexPath.section][indexPath.row]
        cell.sectionImageview?.image = UIImage(named: item)
        
        return cell
    }
    
}
