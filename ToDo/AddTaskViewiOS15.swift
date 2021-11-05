//
//  AddTaskViewiOS15.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

@available(iOS 15.0, *)
struct AddTaskViewiOS15: View {
    @ObservedObject var todo: MyToDoList
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var date = Date()
    @State private var description: String = ""
    @State private var priority: String = ""
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Task").foregroundColor(.black).font(.headline)) {
                    TextField("Name", text: $name)
                    TextField("Description", text: $description)
                }
                
                Section(header: Text("priority").foregroundColor(.black)) {
                    Picker("Priority", selection: $priority) {
                        Text("high").tag("high")
                        Text("medium").tag("medium")
                        Text("low").tag("low")
                    }
                    .pickerStyle(.segmented)
                }
                
                Section(header: Text("due").foregroundColor(.black)) {
                    DatePicker("", selection: $date)
                        .datePickerStyle(.graphical)
                }
            }
            HStack {
                Spacer()
                cancelButton
                Spacer()
                addButton
                Spacer()
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            todo.addTask(name: name, description: description, date: date, isCompltete: false, priority: priority)
            dismiss()
        }
    }
    
    var cancelButton: some View {
        Button("Cancel") {
            dismiss()
        }
    }
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
//struct addNewTaskView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskViewiOS15()
//    }
//}
