//
//  MyToDoList.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

class MyToDoList: ObservableObject {
    typealias Task = ToDoList.Task
    private let myKey = "myKey"

    init() {
        toDoList = ToDoList()
        fetchTasks()
    }
    
    @Published private var toDoList: ToDoList {
        didSet {
            if toDoList.tasks != oldValue.tasks {
                saveTasks()
            }
        }
    }
    
    var tasks: [Task] {
        toDoList.tasks
    }
    
    // MARK: - Saving and Fetching Data
    
    private func saveTasks() {
        if let encodedData = try? JSONEncoder().encode(tasks) {
            UserDefaults.standard.set(encodedData, forKey: myKey)
        }
    }
    
    private func fetchTasks() {
        guard
            let data = UserDefaults.standard.data(forKey: myKey),
            let savedTasks = try? JSONDecoder().decode([Task].self, from: data)
        else { return }
        for task in savedTasks {
            addTask(name: task.name, description: task.description, date: task.date, isCompltete: task.isComplete, priority: task.priority)
        }
        
    }
    
    // MARK: - Intent(s)
    
    func addTask(name: String, description: String, date: Date, isCompltete: Bool, priority: String) {
        toDoList.addTask(name: name, description: description, date: date, isComplete: isCompltete, priority: priority)
    }
    
    func deleteTask(at index: IndexSet) {
        toDoList.deleteTask(at: index)
    }
    
    func complete(_ task: Task) {
        toDoList.complete(task)
    }
}
