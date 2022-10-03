//
//  ViewController.swift
//  TodoList
//
//  Created by Emerson Javid Gonzalez Morales on 11/09/22.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var todoList = ["Comprar Leche", "Ir al gimnasio", "Ir a la Universidad"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = todoList[indexPath.row]
        
        return cell
    }
    
    //Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //Add new Item
    
    @IBAction func btnAddItem(_ sender: UIBarButtonItem) {
        var textField = UITextField()
        let alert = UIAlertController(title: "Agrega una nueva tarea", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Agregar", style: .default) { (action) in
            self.todoList.append(textField.text!)
            self.tableView.reloadData()
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Crea una nueva tarea"
            textField = alertTextField
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
}

