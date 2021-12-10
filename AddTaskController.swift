//
//  AddTaskController.swift
//  RisingCamp_Week3_CloneApp_CarrotMarket
//
//  Created by 김민종 on 2021/12/10.
//

protocol AddTask {
    func addTask(name: String, price: String, desc: String)
}

import UIKit

class AddTaskController: UIViewController {

    
    @IBAction func AddAction(_ sender: Any) {
        if taskNameOutlet.text != "", taskPriceOutlet.text != "", descOutlet.text != "" {
            delegate?.addTask(name: taskNameOutlet.text!, price: taskPriceOutlet.text!, desc: descOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    @IBOutlet weak var taskPriceOutlet: UITextField!
    
    @IBOutlet weak var descOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
