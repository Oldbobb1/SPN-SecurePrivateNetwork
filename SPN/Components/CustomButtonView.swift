import SwiftUI

struct CustomButtonView: View {
    let action: () -> Void
    let text: String
    let foregroundStyle: Color
    let radius: CGFloat
    let fillColor: Color
    let strokeColor: Color
    let firstShadowColor: Color
    var body: some View {
        VStack {
            Button(action: action) {
                Text(text)
                    .font(.headline)
                    .bold()
                    .foregroundStyle(foregroundStyle)
                    .frame(height: 50, alignment: .center)
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: radius)
                            .fill(fillColor)
                            .stroke(strokeColor, lineWidth: 3)
                            .shadow(
                                color: firstShadowColor.opacity(0.5),
                                radius: 3,
                                x: 2,
                                y: 2
                            )
                            .shadow(
                                color: Color(UIColor.systemGray3),
                                radius: 3,
                                x: -1,
                                y: -2
                            )
                    )
            }
        }
    }
}
