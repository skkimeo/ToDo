//
//  CheckboxToggleStyle.swift
//  ToDo
//
//  Created by sun on 2021/10/26.
//

import SwiftUI

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
//            Spacer()
            configuration.label
        }
        .foregroundColor(configuration.isOn ? .gray : .black)
    }
}
