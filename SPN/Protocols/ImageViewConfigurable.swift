//
//  ImageViewConfigurable.swift
//  SPN
//
//  Created by Bobbi R. on 27.02.25.
import SwiftUI

protocol ImageViewConfigurable {
    var nameImage: String? { get }
    var systemName: String? { get }
    var width: CGFloat? { get }
    var height: CGFloat? { get }
    var cornerRadius: CGFloat? { get }
    var maxWidth: CGFloat? { get }
    var alignment: Alignment? { get }
    var foregroundColor: Color? { get }
}
