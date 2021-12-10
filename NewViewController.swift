//
//  NewViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/10.
//
//
//import UIKit
//
//class NewViewController: UIViewController {
//    
//    @IBOutlet var tableView: UITableView!
//    
//    var tasks = [String]()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        self.title = "Tasks"
//        
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//        if !UserDefaults().bool(forKey: "setup"){
//            UserDefaults().set(true, forKey: "setup")
//            UserDefaults().set("0", forKey: "count")
//
//        }
//        
//        updateTasks()
//
//    }
//    
//    func updateTasks() {
//        
//        tasks.removeAll()
//        
//        guard let count = UserDefaults().value(forKey: "count") as? Int else {
//            return
//        }
//        
//        for x in 0..<count {
//            if let task = UserDefaults().value(forKey: "task_\(x+1)") as? String {
//                tasks.append(task)
//            }
//        }
//        
//        tableView.reloadData()
//    }
//    
//    @IBAction func didTapAdd() {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "newEntry") as! NewEntryViewController
//        vc.title = "중고나라 거래"
//        vc.update = {
//            DispatchQueue.main.async {
//                self.updateTasks()
//            }
//        }
//        navigationController?.pushViewController(vc, animated: true)
//    }
//    
//
//}
//
//extension NewViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//}
//
//extension NewViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return tasks.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath)
//        cell.textLabel?.text = tasks[indexPath.row]
//        return cell
//    }
//    
//}
