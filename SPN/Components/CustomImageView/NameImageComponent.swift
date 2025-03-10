//
//  NameImageComponent.swift
//  SPN
//
//  Created by Bobbi R. on 28.02.25.
import SwiftUI

struct NameImageComponent: View {
    var imageParametr: ImageViewConfigurable?
    var body: some View {
        if let nameImage = imageParametr?.nameImage {
            Image(nameImage)
                .resizable()
                .frame(width: imageParametr?.width, height: imageParametr?.height)
                .clipShape(RoundedRectangle(cornerRadius: imageParametr?.cornerRadius ?? 0))
                .frame(maxWidth: imageParametr?.maxWidth, alignment: imageParametr?.alignment ?? .center)
        }
    }
}
