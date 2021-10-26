//
//  AddTaskViewiOS14AndUnder.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//


import SwiftUI

struct AddTaskViewiOS14AndUnder: View {
    @ObservedObject var todo: MyToDoList
    @Environment(\.presentationMode) private var presentationMode
    
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
            todo.addTask(name: name, description: description, date: date, isCompltete: false)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    var cancelButton: some View {
        Button("Cancel") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

    
    
    
    
    
    
    
    
    
    
    
    
    
    
//
//struct AddTaskViewiOS14AndUnder_Previews: PreviewProvider {
//    static var previews: some View {
//        AddTaskViewiOS14AndUnder()
//    }
//}
