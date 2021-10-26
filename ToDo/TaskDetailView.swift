//
//  TaskDetailView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskDetailView: View {
    var task: MyToDoList.Task

    var body: some View {
        VStack {
            Text("Task: \(task.name)").font(.largeTitle)
            if #available(iOS 15.0, *) {
                Text("Due: \(task.date.formatted(.dateTime))")
            } else {
                Text("Due: \(task.date.description)")
            }
            Spacer()
            Text(task.description).font(Font.system(size: 25))
            Spacer()
        }
    }
}














//struct TaskDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskDetailView()
//    }
//}
