//
//  MyToDoListView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct MyToDoListView: View {
    
    @StateObject var todo: MyToDoList
    
    var body: some View {
        NavigationView {
            VStack {
                //                addButton
                toDoListBody
            }
            .navigationTitle("My To Do List")
        }
    }
    
    @ViewBuilder var toDoListBody: some View {
        List {
            ForEach(todo.tasks) { task in
                NavigationLink(destination: TaskDetailView(task: task)) {
                    TaskRowView(task: task)
                        .padding(.vertical)
                }
            }
            .onDelete(perform: todo.deleteTask)
        }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let todo = MyToDoList()
        MyToDoListView(todo: todo)
    }
}
