import SwiftUI

struct TextComponent: View {
    var textParametr: TextButtonConfigurable?
    var body: some View {
        if let text = textParametr?.text {
            Text(text)
                .font(textParametr?.font)
                .bold()
                .foregroundStyle(
                    textParametr?.textForegroundStyle ?? Color(UIColor.label)
                )
        }
    }
}
