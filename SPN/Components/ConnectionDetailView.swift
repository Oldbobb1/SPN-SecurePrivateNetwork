import SwiftUI

struct ConnectionDetailView: View {
    let systemName: String
    let title: String
    var titleStyle: Color? = .primary
    let text: String
    var textStyle: Color? = .primary
    var shadow: CustomShadowConfigurable? = nil
    var body: some View {
        HStack {
            CustomImageView(
                imageParametr: ImageViewConfiguration(systemName: systemName)
            )
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
                    foregroundStyle: textStyle
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
    }
}

#Preview {
    ConnectionDetailView(
        systemName: "globe",
        title: "wifi",
        titleStyle: .primary,
        text: "connect",
        textStyle: .green
    )
}
