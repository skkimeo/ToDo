//
//  MyToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

class MyToDoList: ObservableObject {
    
    // fill this manually?
    static var myTasks = [Task]()
    
    static private func createToDoList() -> ToDoList {
        ToDoList(tasks: myTasks)
    }
    
    @Published private var toDoList = createToDoList()
    
    // MARK: - Intent(s)
    
    func add(_ task: Task) {
        toDoList.add(task)
    }
    
    func delete(_ task: Task) {
        toDoList.delete(task)
    }
}
