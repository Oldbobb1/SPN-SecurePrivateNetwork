import SwiftUI

protocol CustomShadowConfigurable {
    var cornerRadius: CGFloat? { get }
    var strokeColor: Color? { get }
    var lineWidth: CGFloat? { get }
    var fill: Color? { get }
    
    var shadowColor1: Color? { get }
    var opacity1: Double? { get }
    var shadowRadius1: CGFloat? { get }
    var x1: CGFloat? { get }
    var y1: CGFloat? { get }
    
    var shadowColor2: Color? { get }
    var opacity2: Double? { get }
    var shadowRadius2: CGFloat? { get }
    var x2: CGFloat? { get }
    var y2: CGFloat? { get }
}
