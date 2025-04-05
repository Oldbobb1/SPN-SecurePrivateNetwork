import SwiftUI

protocol ImageButtonConfigurable {
    var systemName: String? { get }
    var width: CGFloat? { get }
    var height: CGFloat? { get }
    var imageForegroundStyle: Color? { get }
    var padding: Edge.Set? { get }
}
