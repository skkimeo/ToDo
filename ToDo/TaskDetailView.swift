//
//  TaskDetailView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskDetailView: View {
    var task: Task

    var body: some View {
        VStack {
            Text("Task: \(task.name)").font(.largeTitle)
            if #available(iOS 15.0, *) {
                Text("Due: \(task.date.formatted(date: .abbreviated, time: .omitted))")
            } else {
                // Fallback on earlier versions
            }
            Spacer()
            // some kind of spacer?
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
