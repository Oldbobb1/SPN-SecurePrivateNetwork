//
//  CustomButtons.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.

import SwiftUI

struct CustomButtons: View {
    // для всех
    var action: () -> Void
    
    var imageParametr: ImageButtonConfigurable? = nil
    
    var textParametr: TextButtonConfigurable? = nil
    
    var spacingParamets: SpacingConfigurable? = nil
    
    var body: some View {
        Button(action: action) {
            HStack {
                if let systemName = imageParametr?.systemName {
                    Image(systemName: systemName)
                        .resizable()
                        .frame(width: imageParametr?.width, height: imageParametr?.height)
                        .foregroundStyle(imageParametr?.imageForegroundStyle ?? .clear)
                        .padding(imageParametr?.padding ?? [])
                }
                if let text = textParametr?.text {
                    Text(text)
                        .font(textParametr?.font)
                        .bold()
                        .foregroundStyle(textParametr?.textForegroundStyle ?? .clear)
                }
            }
            .frame(height: textParametr?.textHeight, alignment: textParametr?.aligment ?? .center)
            .frame(maxWidth: textParametr?.maxWidth)
            //здесь надо сделать опциональным - здесь будет готовая структура с тенями
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(.black, lineWidth: 4)
                    .fill( .clear)
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
        }
        .padding(.top, spacingParamets?.top ?? 0)
        .padding(.bottom, spacingParamets?.bottom ?? 0)
        .padding(.leading, spacingParamets?.leading ?? 0)
        .padding(.trailing, spacingParamets?.trailing ?? 0)
        if spacingParamets?.spacer ?? false { Spacer() }
    }
}
