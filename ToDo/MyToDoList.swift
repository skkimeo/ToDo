//
//  MyToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

class MyToDoList: ObservableObject {
    
    // fill this manually?
    static var myTasks: [Task] {
        var tasks = [Task]()
        let makeToDoApp = Task(name: "make todo app", description: "for piscine...", date: Date())
        tasks.append(makeToDoApp)
        return tasks
    }
    
    static private func createToDoList() -> ToDoList {
        ToDoList(tasks: myTasks)
    }
    
    @Published private var toDoList = createToDoList()
    
    var tasks: [Task] {
        toDoList.tasks
    }
    
    // MARK: - Intent(s)
    
    func add(_ task: Task) {
        toDoList.add(task)
    }
    
    func delete(_ task: Task) {
        toDoList.delete(task)
    }
}
