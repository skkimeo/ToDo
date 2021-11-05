//
//  ToDoApp.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

@main
struct ToDoApp: App {
    let todo = MyToDoList()
    var body: some Scene {
        WindowGroup {
            if #available(iOS 15.0, *) {
                MyToDoListView(todo: todo)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
