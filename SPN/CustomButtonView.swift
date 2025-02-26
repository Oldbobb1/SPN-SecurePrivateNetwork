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
                            .stroke(strokeColor, lineWidth: 4)
                            .shadow(
                                color: firstShadowColor.opacity(0.5),
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
                    )
            }
        }
    }
}

