//
//  SecondViewController.swift
//  Todo_app
//
//  Created by ek-mac-02 on 21/09/2022.
//

import UIKit

// MARK: protocol
protocol  AddListDelegate: NSObject{
    func addlist()
}

class SecondViewController: UIViewController {
    
    enum ViewType {
        case fromPlus
        case fromActionsheet
    }
    
//    MARK: outlets
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var todoTextfield: UITextField!
    
//    MARK: Variables
    weak var addDelegate: AddListDelegate?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var todoItem: ToDoListitem?
    var type: ViewType = .fromPlus
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for edit list add list option
        if type == .fromActionsheet {
            todoTextfield.text = todoItem?.name
            button.setTitle("Edit List", for: .normal)
        }else{
            button.setTitle("Add List", for: .normal)
        }
    }
    
//    action button
    @IBAction func addButton(_ sender: Any) {
        
        if type == .fromPlus
        {
            let newItem = ToDoListitem(context: context)
            newItem.name = todoTextfield.text
            newItem.createdAt = Date()
            
            do {
                try context.save()
                dismiss(animated: true)
                addDelegate?.addlist()
            }
            catch {
                
            }
        } else {
            todoItem?.name = todoTextfield.text
            
            do {
                try context.save()
                dismiss(animated: true)
                addDelegate?.addlist()
                
                
            }catch{
                
            }
        }
        
        
        
    }
}
