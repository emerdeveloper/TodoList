//
//  ViewController.swift
//  TodoList
//
//  Created by Emerson Javid Gonzalez Morales on 11/09/22.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let todoList = ["Comprar Leche", "Ir al gimnasio", "Ir a la Universidad"]

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

}

