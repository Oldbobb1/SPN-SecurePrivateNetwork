//
//  ImageButtonConfiguration.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//


import SwiftUI

struct ImageButtonConfiguration: ImageButtonConfigurable {
    var systemName: String? = nil
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var imageForegroundStyle: Color? = nil
    var padding: Edge.Set? = nil
//    var paddingValue: CGFloat? = nil 
}
