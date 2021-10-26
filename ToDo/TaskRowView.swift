//
//  TaskRowView.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct TaskRowView: View {
    var task: MyToDoList.Task
    @State private var isComplete = false
    
    var body: some View {
        Toggle(isOn: $isComplete) {
            HStack {
                Text(task.date, style: .date)
                Text(task.name.uppercased()).bold()
            }
        }
        .toggleStyle(CheckboxToggleStyle())
    }
}









//struct TaskRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskRowView()
//    }
//}
