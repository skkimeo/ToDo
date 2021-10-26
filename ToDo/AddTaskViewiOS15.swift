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
    
    // If you’re targeting iOS 14 or below,
    // you should use @Environment(\.presentationMode) var presentationMode
    // and presentationMode.wrappedValue.dismiss() instead.
    @Environment(\.dismiss) var dismiss
    
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
            todo.addTask(name: name, description: description, date: date)
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
