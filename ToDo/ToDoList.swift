//
//  ToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import Foundation
//import UIKit

struct ToDoList {
    var tasks = [Task]()
  
    init() {}
    
    mutating func addTask(name: String, description: String, date: Date, isComplete: Bool, priority: String) {
        tasks.append(Task(name: name, description: description, date: date, isComplete: isComplete, priority: priority))
    }
    
    mutating func deleteTask(at index: IndexSet) {
        tasks.remove(atOffsets: index)
    }
    
    mutating func complete(_ task: Task) {
        if let index = tasks.firstIndex(of: task) {
            tasks[index].isComplete.toggle()
        }
    }
    
    struct Task: Identifiable, Codable, Equatable {
        var id = UUID()
        var name: String
        // or maybe the description could be some type of array?
        // so that I can display them in list?
        var description: String
        var date: Date
        var isComplete = false
        var priority: String
        
        // so that other's can't add a new task from outside the Model
        fileprivate init(name: String, description: String, date: Date, isComplete: Bool, priority: String) {
            self.name = name
            self.description = description
            self.date = date
            self.isComplete = isComplete
            self.priority = priority
        }
    }
}

