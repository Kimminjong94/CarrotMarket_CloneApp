//
//  Home.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/10.
//

import UIKit

class Home: UIViewController, UITableViewDelegate, UITableViewDataSource, AddTask {
    
    @IBOutlet weak var tableView: UITableView!
    var tasks: [Task] = []
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks.append(Task(name: "아이폰 12", price: "12,000원", desc: "너무 좋은 상품 감사해요"))
        tasks.append(Task(name: "아이패드 10.5", price: "134,000원", desc: "뭐 그야 제가 하는 모든게 다 제 관심사죠.는 요즘 귀여운 냉장고 자석을 찾아보고 있어요. 잊지 말아야 할 것들을 냉장고나 현관문에 자석으로 붙여놓는데요! 알아보니 열쇠나 마스크를 걸어 놓는 고리로 된 자석도 있고, 귀여운 동물 모양, 맛있는 음식 모양 등 종류가 정말 많았어요! 놓치지 않고 장바구니로 차곡차곡 쌓이고 있답니다.는 요즘 귀여운 냉장고 자석을 찾아보고 있어요. 잊지 말아야 할 것들을 냉장고나 현관문에 자석으로 붙여놓는데요! 알아보니 열쇠나 마스크를 걸어 놓는 고리 로 된 자석도 있고, 귀여운 동물 모양, 맛있는 음식 모양 등 종류가 정말 많았어요! 놓치지 않고 장바구니로 차곡차곡 쌓이고 있답니다."))
        tasks.append(Task(name: "맥북 에어", price: "13,000원", desc: "뭐 그야 제가 하는 모든게 다 제 관심사죠.는 요즘 귀여운 냉장고 자석을 찾아보고 있어요. 잊지 말아야 할 것들을 냉장고나 현관문에 자석으로 붙여놓는데요! 알아보니 열쇠나 마스크를 걸어 놓는 고리로 된 자석도 있고"))
        tasks.append(Task(name: "아이패드 10.5", price: "154,000원", desc: "뭐아야 할 것들을 냉장고나 현관문에 자석으로 붙여놓는데요! 알아보니 열쇠나 마스크를 걸어 놓는 고리 로 된 자석도 있고, 귀여운 동물 모양, 맛있는 음식 모양 등 종류가 정말 많았어요! 놓치지 않고 장바구니로 차곡차곡 쌓이고 있답니다."))
        tasks.append(Task(name: "종이컵 12", price: "100원", desc: "보니 열쇠나 마스크를 걸어 놓는 고리로 된 자석도 있고, 귀여운 동물 모양, 맛있는 음식 모양 등 종류가 정말 많았어요! 놓치지 않고 장바구니로 차곡차곡 쌓이고 있답니다.는 요즘 귀여운 냉장고 자석을 찾아보고 있어요. 잊지 말아야 할 것들을 냉장고나 현관문에 자석으로 붙여놓는데요! 알아보니 열쇠나 마스크를 걸어 놓는 고리 ."))
        tasks.append(Task(name: "의자", price: "124,000원", desc: "뭐 그어요! 놓치지 않고 장바구니로 차곡차곡 쌓이고 있답니다.는 요즘 귀여운 냉장고 자석을 찾아보고 있치지 않고 장바구니로 차곡차곡 쌓이고 있답니다."))
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 300
        
        navigationController?.navigationBar.tintColor = .label
        configureItem()


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
                image: UIImage(systemName: "text.justify"),
                style: .done,
                target: self,
                action: nil
            ),
            UIBarButtonItem(
                image: UIImage(systemName: "magnifyingglass"),
                style: .done,
                target: self,
                action: nil
            )
        ]
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "사직제2동˅",
            style: .done,
            target: self,
            action: nil
        )
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        
        cell.taskNameLabel.text = tasks[indexPath.row].name
        cell.priceNameLabel.text = tasks[indexPath.row].price
        
        
        
        return cell
    }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            print("click\(indexPath.row)")
    
            let productDetail = storyboard?.instantiateViewController(withIdentifier: "HomeDetailViewController") as! HomeDetailViewController
    
            productDetail.name = tasks[indexPath.row].name
            productDetail.price = tasks[indexPath.row].price
            productDetail.desc = tasks[indexPath.row].desc
    
    
            self.navigationController?.pushViewController(productDetail, animated: true)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! AddTaskController
        vc.delegate = self
    }
    
    func addTask(name: String, price: String, desc: String) {
        tasks.append(Task(name: name, price: price, desc: desc))
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }

}



class Task {
    var name = ""
    var price = ""
    var desc = ""
    var image = UIImage(named: "")
    
    convenience init(name: String, price: String, desc: String, image: ) {
        self.init()
        self.name = name
        self.price = price
        self.desc = desc
        self.image = image
    }
}
