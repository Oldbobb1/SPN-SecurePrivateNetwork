//
//  SpacingConfigurable.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//


import SwiftUI

protocol SpacingConfigurable {
    var height: CGFloat? { get }
    var aligment: Alignment? { get }
    var maxWidth: CGFloat? { get }
    var padding: Edge.Set? { get }
    var top: CGFloat? { get }
    var bottom: CGFloat? { get }
    var leading: CGFloat? { get }
    var trailing: CGFloat? { get }
    var spacer: Bool? { get }
}
