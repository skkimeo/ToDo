//
//  MyToDoListView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

@available(iOS 15.0, *)
struct MyToDoListView: View {
    
    @StateObject var todo: MyToDoList
    @State private var showingAddTaskSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
//                    EditButton()
                    addButton
                }
                toDoListBody
            }
            .navigationBarTitle("My To Do List")
        }
    }
    
    var addButton: some View {
        Button {
            showingAddTaskSheet.toggle()
        } label: {
            Image(systemName: "plus")
        }
        .padding()
        .sheet(isPresented: $showingAddTaskSheet) {
            if #available(iOS 15.0, *) {
                AddTaskViewiOS15(todo: todo)
            } else {
                AddTaskViewiOS14AndUnder(todo: todo)
            }
        }
        
    }
    
    @ViewBuilder var toDoListBody: some View {
        List {
            ForEach(todo.tasks) { task in
                NavigationLink(destination: TaskDetailView(todo: todo, task: task)) {
                    TaskRowView(todo: todo, task: task)
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
        if #available(iOS 15.0, *) {
            MyToDoListView(todo: todo)
        } else {
            // Fallback on earlier versions
        }
    }
}
