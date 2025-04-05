import SwiftUI

struct ImageButtonConfiguration: ImageButtonConfigurable {
    var systemName: String? = nil
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var imageForegroundStyle: Color? = nil
    var padding: Edge.Set? = nil
}
