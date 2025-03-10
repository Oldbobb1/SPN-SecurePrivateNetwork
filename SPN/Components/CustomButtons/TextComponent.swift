//
//  TextComponent.swift
//  SPN
//
//  Created by Bobbi R. on 28.02.25.
//

import SwiftUI

struct TextComponent: View {
    var textParametr: TextButtonConfigurable?
    var body: some View {
        if let text = textParametr?.text {
            Text(text)
                .font(textParametr?.font)
                .bold()
                .foregroundStyle(textParametr?.textForegroundStyle ?? Color(UIColor.label))
        }
    }
}
