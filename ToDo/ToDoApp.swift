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
            MyToDoListView(todo: todo)
        }
    }
}
