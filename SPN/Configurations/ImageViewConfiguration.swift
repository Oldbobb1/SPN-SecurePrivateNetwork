//
//  ImageViewConfiguration.swift
//  SPN
//
//  Created by Bobbi R. on 27.02.25.
//


import SwiftUI

struct ImageViewConfiguration: ImageViewConfigurable {
    var nameImage: String? = nil
    var systemName: String? = nil
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var cornerRadius: CGFloat? = nil
    var maxWidth: CGFloat? = nil
    var alignment: Alignment? = nil
    var foregroundColor: Color? = nil
}