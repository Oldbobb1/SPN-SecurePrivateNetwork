//
//  DividerWithText.swift
//  SPN
//
//  Created by Bobbi R. on 24.02.25.
//


import SwiftUI

struct DividerWithText: View {
    var body: some View {
        HStack {
            DividerLine()
            Text("Or")
                .padding(.horizontal)
                .font(.system(.headline).weight(.bold))
            DividerLine()
        }
        .padding(.vertical)
        .padding(.leading)
        .padding(.trailing) 
    }
}

#Preview {
    DividerWithText()
}
