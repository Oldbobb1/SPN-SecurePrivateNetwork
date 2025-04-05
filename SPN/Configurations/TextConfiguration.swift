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
