//
//  MyToDoListView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct MyToDoListView: View {
    
    @ObservedObject var Todo: MyToDoList
    
    var body: some View {
        NavigationView {
            VStack {
//                addButton
//                toDoListBody -> use Navigation link to link to detail view
            }
            .navigationTitle("My To Do List")
        }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let todo = MyToDoList()
        MyToDoListView(Todo: todo)
    }
}
