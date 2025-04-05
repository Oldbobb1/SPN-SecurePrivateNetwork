//  CustomText.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.

import SwiftUI

struct CustomText: View {
    var textParametr: TextConfigurable? = nil
    var body: some View {
        HStack{
            if textParametr?.spacerTop ?? false { Spacer() }
            Text(textParametr?.text ?? "")
                .font(textParametr?.font ?? .system(.largeTitle).weight(.bold))
                .foregroundStyle(textParametr?.foregroundStyle ?? .primary)
                .padding(textParametr?.padding?.0 ?? [])
                .frame(maxWidth: textParametr?.maxWidth, alignment: textParametr?.alignment ?? .center)
            if textParametr?.spacerBottom ?? false { Spacer() }
        }
    }
}
