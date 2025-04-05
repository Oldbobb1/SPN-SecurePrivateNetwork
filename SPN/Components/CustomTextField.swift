//  CustomTextField.swift
//  SPN
//  Created by Bobbi R. on 5.04.25.

import SwiftUI

struct CustomTextField<V: View>: View {
    @Binding var search: String
    var placeholder: String
    var field: (String, Binding<String>) -> V
    var body: some View {
        HStack {
            field(placeholder, $search)
                .padding()
                .keyboardType( .asciiCapable)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.black, lineWidth: 6)
                        .fill(Color(UIColor.systemGray6))
                        .shadow(
                            color: .black.opacity(0.5),
                            radius: 1,
                            x: 2,
                            y: 2
                        )
                        .shadow(
                            color: .gray.opacity(0.7),
                            radius: 2,
                            x: -1,
                            y: -2
                        )
                )
                .padding(20)
                .multilineTextAlignment(.leading)
        }
    }
}
