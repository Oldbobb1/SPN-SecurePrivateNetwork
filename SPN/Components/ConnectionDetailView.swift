import SwiftUI


struct ConnectionDetailView: View {
    let systemName: String
    let width: CGFloat
    let height: CGFloat
    let style: Color
    let title: String
    let titleStyle: Color
    let text: String
    let textStyle: Color
    var body: some View {
        HStack {
            CustomImageView(imageParametr: ImageViewConfiguration(systemName: systemName))
            CustomText(
                textParametr: TextConfiguration(
                    text: title,
                    font: .system(.title).bold(),
                    foregroundStyle: titleStyle
                )
            )
            Spacer()
            CustomText(
                textParametr: TextConfiguration(
                    text: text,
                    font: .title2,
                    foregroundStyle: titleStyle
                )
            )
        }
        .padding(.horizontal)
        .frame(height: 70)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray6.withAlphaComponent(0.8)))
                .stroke(.black, lineWidth: 4)
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
//        .padding(.horizontal)
    }
}

#Preview {
    ConnectionDetailView(
        systemName: "globe",
        width: 30,
        height: 30,
        style: .red,
        title: "Status:",
        titleStyle: .primary,
        text: "Conected",
        textStyle: .primary
    )
}
