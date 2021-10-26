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
//    static var myTasks = [Task]()
    private let myKey = "myKey"
    
//    static private func createToDoList() -> ToDoList {
//        ToDoList(tasks: myTasks)
//    }
    
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
    
    private func fetchTasks() {
        guard
            let data = UserDefaults.standard.data(forKey: myKey),
            let savedTasks = try? JSONDecoder().decode([Task].self, from: data)
        else { return }
        for task in savedTasks {
            addTask(name: task.name, description: task.description, date: task.date)
        }
        
    }
    
    
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
    
    func saveTasks() {
        if let encodedData = try? JSONEncoder().encode(tasks) {
            UserDefaults.standard.set(encodedData, forKey: myKey)
        }
    }
    
//    func complete(_ task: Task) {
//        toDoList.complete(task)
//    }
}
