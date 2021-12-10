//
//  AddViewController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/10.
//

//import UIKit
//
//class AddViewController: UIViewController, UITextFieldDelegate {
//
//    @IBOutlet weak var addTextField: UITextField!
//
//    var update: (() -> Void)?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        addTextField.delegate = self
//
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(saveTask))
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//        saveTask()
//        return true
//    }
//
//    @objc func saveTask() {
//
//        guard let text = addTextField.text, !text.isEmpty else {
//            return
//        }
//
//        guard let count = UserDefaults().value(forKey: "count") as? Int else {
//            return
//        }
//
//        let newCount = count + 1
//
//        UserDefaults().set(newCount, forKey: "count")
//        UserDefaults().set(text, forKey: "task_\(newCount)")
//
//        update?()
//
//        navigationController?.popViewController(animated: true)
//
//        
//
//    }
//
    
    

//    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
//
//        let data : String = addTextField.text!
//
//        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        secondViewController.result = [data]
//
//        self.present(secondViewController, animated: true, completion: nil)
        
        //        let cell = HomeTableViewMain.dequeueReusableCell(withIdentifier: "HomeProductData") as! HomeProductData
        //        cell.showProductNameLabel.text = result
        //        if let txt = cell.showProductNameLabel.text, !txt.isEmpty {
        //            HomeTableViewMain?.beginUpdates()
        //            HomeTableViewMain?.insertRows(at: [IndexPath(row: 0, section: 0)], with: .right)
        //            HomeTableViewMain?.endUpdates()
        //    }
        
        
        
        
//    }
//    
//}
