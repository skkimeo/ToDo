//
//  ToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import Foundation

struct ToDoList {
    var tasks: [Task]
    
    init(tasks: [Task]) {
        self.tasks = tasks
    }
    
    mutating func add(_ task: Task) {
        tasks.append(task)
    }
    
    mutating func delete(_ task: Task) {
        if let index = tasks.firstIndex(of: task) {
            tasks.remove(at: index)
        }
    }
}

struct Task: Identifiable, Equatable {
    var id = UUID()
    var name: String
    // or maybe the description could be some type of array?
    // so that I can display them in list?
    var description: String
    var date: Date
}
