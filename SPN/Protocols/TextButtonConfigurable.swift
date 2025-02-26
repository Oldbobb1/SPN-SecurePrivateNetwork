//
//  TextButtonConfigurable.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//


import SwiftUI

protocol TextButtonConfigurable {
    var text: String? { get }
    var font: Font? { get }
    var textForegroundStyle: Color? { get }
    var textHeight: CGFloat? { get }
    var aligment: Alignment? { get }
    var maxWidth: CGFloat? { get }
}