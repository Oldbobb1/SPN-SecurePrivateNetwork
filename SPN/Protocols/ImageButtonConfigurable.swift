//
//  ImageButtonConfigurable.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//


import SwiftUI

protocol ImageButtonConfigurable {
    var systemName: String? { get }
    var width: CGFloat? { get }
    var height: CGFloat? { get }
    var imageForegroundStyle: Color? { get }
    var padding: Edge.Set? { get }
}
