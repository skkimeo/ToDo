//
//  TaskRowView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskRowView: View {
    var task: Task
    
    var body: some View {
        HStack {
            // try to add a check box later
            Text(task.date, style: .date)
            Text(task.name.uppercased()).bold()
        }
    }
}

//struct TaskRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskRowView()
//    }
//}
