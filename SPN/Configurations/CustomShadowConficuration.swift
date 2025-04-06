import SwiftUI

struct CustomShadowConficuration: CustomShadowConfigurable {
    var cornerRadius: CGFloat? = nil
    var strokeColor: Color? = nil
    var lineWidth: CGFloat? = nil
    var fill: Color? = nil
    
    var shadowColor1: Color? = nil
    var opacity1: Double? = nil
    var shadowRadius1: CGFloat? = nil
    var x1: CGFloat? = nil
    var y1: CGFloat? = nil
    
    var shadowColor2: Color? = nil
    var opacity2: Double? = nil
    var shadowRadius2: CGFloat? = nil
    var x2: CGFloat? = nil
    var y2: CGFloat? = nil
}
