//
//  TaskRowView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskRowView: View {
    @ObservedObject var todo: MyToDoList
    var task: MyToDoList.Task
    var priorityColor: Color
    
    init(todo: MyToDoList, task: MyToDoList.Task) {
        self.todo = todo
        self.task = task
        switch task.priority {
        case "high":
            priorityColor = .red
        case "medium":
            priorityColor = .orange
        default:
            priorityColor = .black
        }
    }
    
    var body: some View {
        HStack {
            checkboxButton
                .foregroundColor(task.isComplete ? .gray : .black)
            VStack(alignment: .leading) {
                if #available(iOS 15.0, *) {
                    Text(task.date.formatted(.dateTime))
                } else {
                    Text(task.date.description)
                }
                Spacer()
                Text(task.name.uppercased()).bold()
            }
            .foregroundColor(task.isComplete ? .gray : priorityColor)
        }
    }
    var checkboxButton: some View {
        Button {
            todo.complete(task)
        } label: {
            Image(systemName: task.isComplete ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 22, height: 22)
        }
        .buttonStyle(.plain)
        .padding()
    }
}










//struct TaskRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskRowView()
//    }
//}
