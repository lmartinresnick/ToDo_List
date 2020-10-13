//
//  CreateToDoViewController.swift
//  ToDo List
//
//  Created by Luke Martin-Resnick on 6/2/20.
//  Copyright © 2020 Luke Martin-Resnick. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let newToDo = ToDoItem(context: context)
            if let name = nameTextfield.text {
                newToDo.name = name
                newToDo.important = importantSwitch.isOn
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
                navigationController?.popViewController(animated: true)
                
            }
        
        }
        
    }
    

}
