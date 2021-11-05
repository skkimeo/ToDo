//
//  TaskDetailView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskDetailView: View {
    @ObservedObject var todo: MyToDoList
    var task: MyToDoList.Task

    var body: some View {
//        Button("Edit") { }
        VStack(alignment: .leading) {
            Text("\(task.name)")
                .font(.largeTitle)
            if #available(iOS 15.0, *) {
                Text("Due: \(task.date.formatted(.dateTime))")
            } else {
                Text("Due: \(task.date.description)")
            }
            Text("priority: \(task.priority)")
                .foregroundColor(.red)
            Text("")
            Text("")
            Text("")
            VStack(alignment: .leading) {
                Text("Deo uisangeun naver...")
                Text("Super King tired")
                Text("ekwon, sun-kim, tekim")
                Text("Swift...Saranghae")
            }
            .font(Font.system(size: 20))
            Spacer()
        }
        .toolbar { EditButton() }
    }
}

//import SwiftUI
//
//@available(iOS 15.0, *)
//struct TaskDetailView: View {
//    @ObservedObject var todo: MyToDoList
//    var myTask: MyToDoList.Task
//    @Environment(\.dismiss) private var dismiss
//
//    @State private var name: String = ""
//    @State private var date :Date = Date()
//    @State private var description: String = ""
//    @State private var priority: String = ""
//
//    init(todo: MyToDoList, task: MyToDoList.Task) {
//        self.todo = todo
//        self.myTask = task
////        self.name = itask.name
////        self.date = itask.date
////        self.priority = itask.priority
////        self.description = itask.description
//    }
//
//    var body: some View {
//        VStack {
//            Form {
//                Section(header: Text("Task").foregroundColor(.black).font(.headline)) {
//                    TextField("Name", text: $name)
//                    TextField("Description", text: $description)
//                }
//
//                Section(header: Text("priority").foregroundColor(.black)) {
//                    Picker("Priority", selection: $priority) {
//                        Text("high").tag("high")
//                        Text("medium").tag("medium")
//                        Text("low").tag("low")
//                    }
//                    .pickerStyle(.segmented)
//                }
//
//                Section(header: Text("due").foregroundColor(.black)) {
//                    DatePicker("", selection: $date)
//                        .datePickerStyle(.graphical)
//                }
//            }
//            HStack {
//                Spacer()
//                cancelButton
//                Spacer()
//                addButton
//                Spacer()
//            }
//        }
//    }
//
//    var addButton: some View {
//        Button("Add") {
//            todo.addTask(name: name, description: description, date: date, isCompltete: false, priority: priority)
//            dismiss()
//        }
//    }
//
//    var cancelButton: some View {
//        Button("Cancel") {
//            dismiss()
//        }
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////struct addNewTaskView_Previews: PreviewProvider {
////    static var previews: some View {
////        AddTaskViewiOS15()
////    }
////}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////struct TaskDetailView_Previews: PreviewProvider {
////    static var previews: some View {
////        TaskDetailView()
////    }
////}
