//
//  AddTaskView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var todo: MyToDoList
    
    @State private var name: String = ""
    @State private var date = Date()
    @State private var description: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Task").foregroundColor(.black).font(.headline)) {
                    TextField("Name", text: $name)
                    TextField("Description", text: $description)
                }
                
                Section {
                    DatePicker("Due", selection: $date)
                }
            }
            HStack {
                addButton
//                cancelButton
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            todo.addTask(name: name, description: description, date: date)
        }
        .onTapGesture {
            
        }
    }
    
//    var cancelButton: some View {
//        Button("Cancel") {
//
//        }
//    }
}

//struct addNewTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskView()
//    }
//}
