import SwiftUI

struct SpacingConfiguration: SpacingConfigurable {
    var height: CGFloat? = nil
    var aligment: Alignment? = nil
    var maxWidth: CGFloat? = nil
    var padding: Edge.Set? = nil
    var top: CGFloat? = nil
    var bottom: CGFloat? = nil
    var leading: CGFloat? = nil
    var trailing: CGFloat? = nil
    var spacer: Bool? = false
}
