//
//  SpacingConfiguration.swift
//  SPN
//
//  Created by Bobbi R. on 26.02.25.
//

import SwiftUI

struct SpacingConfiguration: SpacingConfigurable {
    var padding: Edge.Set? = nil
    var top: CGFloat? = nil
    var bottom: CGFloat?  = nil
    var leading: CGFloat?  = nil
    var trailing: CGFloat?  = nil
    var spacer: Bool? = false
}
