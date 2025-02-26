import SwiftUI

struct ButtonImageView: View {
    let action: () -> Void
    let systemName: String
    let style: Color
    let fillColor: Color?
    var body: some View {
        VStack(spacing: 40) {
            Button(action: action) {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(style)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(.black, lineWidth: 8)
                            .fill(fillColor ?? .clear)
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
                    )
            }
        }
    }
}

#Preview {
    ButtonImageView(
        action: {
            print("press")
        },
        systemName: "info.circle.fill",
        style: .yellow,
        fillColor: Color(UIColor.systemGray6)
    )
}


