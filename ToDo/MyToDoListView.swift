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
                //use Navigation link to link to detail view
                toDoListBody
            }
            .navigationTitle("My To Do List")
        }
    }
    
    @ViewBuilder var toDoListBody: some View {
        List {
            ForEach(todo.tasks) { task in
                //            NavigationLink() {
                TaskRowView(task: task)
                //        }
            }
        }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let todo = MyToDoList()
        MyToDoListView(todo: todo)
    }
}
