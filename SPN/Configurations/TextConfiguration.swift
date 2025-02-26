//
//  TextConfiguration.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//
import SwiftUI

struct TextConfiguration: TextConfigurable {
    var spacerTop: Bool? = nil
    var text: String?  = nil
    var font: Font?  = nil
    var foregroundStyle: Color? = nil
    var padding: (Edge.Set, CGFloat)?  = nil
    var maxWidth: CGFloat? = nil
    var alignment: Alignment? = nil
    var spacerBottom: Bool?  = nil
}
