//
//  TextConfigurable.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//
import SwiftUI

protocol TextConfigurable {
    var spacerTop: Bool? { get }
    var text: String? { get }
    var font: Font? { get }
    var foregroundStyle: Color? { get }
    var padding: (Edge.Set, CGFloat)? { get }
    var maxWidth: CGFloat? { get }
    var alignment: Alignment? { get }
    var spacerBottom: Bool? { get }
}
