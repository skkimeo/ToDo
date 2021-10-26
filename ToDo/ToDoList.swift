//
//  ToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import Foundation
import UIKit

struct ToDoList {
    var tasks: [Task]
    
    init(tasks: [Task]) {
        self.tasks = tasks
    }
    
    mutating func addTask(name: String, description: String, date: Date) {
        tasks.append(Task(name: name, description: description, date: date))
    }
    
    mutating func deleteTask(at index: IndexSet) {
        tasks.remove(atOffsets: index)
    }
    
//    mutating func complete(_ task: Task) {
//        if let index = tasks.firstIndex(of: task) {
//            tasks[index].isComplete = true
//        }
//    }
}

struct Task: Identifiable, Equatable {
    var id = UUID()
    var name: String
    // or maybe the description could be some type of array?
    // so that I can display them in list?
    var description: String
    var date: Date
    // toggle this for checkbox...
//    var isComplete = false
}
