//
//  chatViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/08.
//

import UIKit

class chatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cells: [Cell] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .label
        configureItem()
        cells = createArray()
        tableView.delegate = self
        tableView.dataSource = self
        
    
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
                )
        ]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "채팅", style: .done, target: self, action: nil)
    }
    
    func createArray() -> [Cell] {
        
        var cell: [Cell] = []
        
        let cell1 = Cell(imageName: "채팅프로필1" , title: "설린", description: "어디에 계세요?", location: "온천동 • 1시간 전")
        let cell2 = Cell(imageName: "채팅프로필2" , title: "모모맘", description: "이가격은 어떠신가요?", location: "사직동 • 2시간 전")
        let cell3 = Cell(imageName: "채팅프로필3" , title: "하요미", description: "네 알겠습니다", location: "명륜동 • 1달 전")
        let cell4 = Cell(imageName: "채팅프로필4" , title: "밴벤", description: "성장기 교정, 소아교정 시기가 중요합니다.", location: "온천동 • 3달 전")
        let cell5 = Cell(imageName: "채팅프로필5" , title: "기리보이", description: "거래 감사합니다?", location: "온천동 • 4달 전")
        let cell6 = Cell(imageName: "채팅프로필6" , title: "의자책상", description: "오늘 오후 3시 이시간에 만나도록 합시다...감사합니다.", location: "동래구 • 5달 전")
        
        cell.append(cell1)
        cell.append(cell2)
        cell.append(cell3)
        cell.append(cell4)
        cell.append(cell5)
        cell.append(cell6)
        
        return cell
    }
    
    
}


extension chatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = cells[indexPath.row]
        let vc = tableView.dequeueReusableCell(withIdentifier: "ChatTableViewCell") as! ChatTableViewCell
        vc.setCell(cell: cell)
        
        return vc
    }
    
    
}
