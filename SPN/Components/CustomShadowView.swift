//import SwiftUI
//
//protocol CustomShadowConfigurable {
//    var cornerRadius: CGFloat? { get }
//    var strokeColor: Color? { get }
//    var lineWidth: CGFloat? { get }
//    var fill: Color? { get }
//    
//    var shadowColor1: Color? { get }
//    var shadowColor2: Color? { get }
//    var opacity1: Double? { get }
//    var opacity2: Double? { get }
//    var shadowRadius1: CGFloat? { get }
//    var shadowRadius2: CGFloat? { get }
//    var x1: CGFloat? { get }
//    var y1: CGFloat? { get }
//    var x2: CGFloat? { get }
//    var y2: CGFloat? { get }
//}
//
//struct CustomShadowConficuration: CustomShadowConfigurable {
//    var cornerRadius: CGFloat? = nil
//    var strokeColor: Color? = nil
//    var lineWidth: CGFloat? = nil
//    var fill: Color? = nil
//    var shadowColor1: Color? = nil
//    var shadowColor2: Color? = nil
//    var opacity1: Double? = nil
//    var opacity2: Double? = nil
//    var shadowRadius1: CGFloat? = nil
//    var shadowRadius2: CGFloat? = nil
//    var x1: CGFloat? = nil
//    var y1: CGFloat? = nil
//    var x2: CGFloat? = nil
//    var y2: CGFloat? = nil
//}
//
//
//struct CustomShadowView: View {
//
//    var cornerRadius: CGFloat
//    var strokeColor: Color
//    var lineWidth: CGFloat
//    var fill: Color
//    var shadowColor1: Color
//    var shadowColor2: Color
//    var opacity1: Double
//    var opacity2: Double
//    var shadowRadius1: CGFloat
//    var shadowRadius2: CGFloat
//    var x1: CGFloat
//    var y1: CGFloat
//    var x2: CGFloat
//    var y2: CGFloat
//    
//    var body: some View {
//        RoundedRectangle(cornerRadius: cornerRadius)
//            .stroke(strokeColor, lineWidth: lineWidth )
//            .fill(fill)
//            .shadow(
//                color: (shadowColor1).opacity(opacity1),  //black 0.5
//                radius: shadowRadius1,
//                x: x1, //2
//                y: y1   //2
//            )
//            .shadow(
//                color: (shadowColor2).opacity(opacity2),   //gray 0.7
//                radius: shadowRadius2 ,
//                x: x2 , //-1
//                y: y2 //-2
//            )
//    }
//}
