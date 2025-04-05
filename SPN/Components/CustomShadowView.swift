import SwiftUI

struct CustomShadowView: View {
//    let cornerRadius: CGFloat
    let strokeColor: Color
    let lineWidth: CGFloat = 1
    let fill: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .stroke(strokeColor, lineWidth: lineWidth)
            .fill(fill)
            .shadow(
                color: .black.opacity(0.5),
                radius: 1,
                x: 2,
                y: 2
            )
            .shadow(
                color: .gray.opacity(0.7),
                radius: 2,
                x: -1,
                y: -2
            )
    }
}
