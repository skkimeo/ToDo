//
//  MyToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

class MyToDoList: ObservableObject {
    typealias Task = ToDoList.Task
    
    // fill this manually?
    static var myTasks = [Task]()
    
    static private func createToDoList() -> ToDoList {
        ToDoList(tasks: myTasks)
    }
    
    @Published private var toDoList = createToDoList()
    
    var tasks: [Task] {
        toDoList.tasks
    }
    
    // MARK: - Intent(s)
    
    func addTask(name: String, description: String, date: Date) {
        toDoList.addTask(name: name, description: description, date: date)
    }
    
    func deleteTask(at index: IndexSet) {
        toDoList.deleteTask(at: index)
    }
    
    
//    func complete(_ task: Task) {
//        toDoList.complete(task)
//    }
}
