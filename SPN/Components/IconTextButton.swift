import SwiftUI

struct IconTextButton: View {
    let action: () -> Void
    let systemName: String
    let width: CGFloat
    let height: CGFloat
    let foregroundStyle: Color
    let text: String
    let textStyle: Color
    let radius: CGFloat
    let fillColor: Color
    let opacity: Double
    let strokeColor: Color
    let shadowColor: Color
    var body: some View {
        VStack {
            Button(action: action) {
                HStack {
                    Image(systemName: systemName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: width, height: height)
                        .foregroundStyle(foregroundStyle)
                    Text(text)
                        .font(.headline)
                        .foregroundStyle(textStyle)
                }
                .frame(height: 50, alignment: .center)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: radius)
                        .fill(fillColor.opacity(opacity))
                        .stroke(strokeColor, lineWidth: 3)
                        .shadow(
                            color: shadowColor.opacity(0.5),
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
