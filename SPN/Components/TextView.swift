import SwiftUI

struct TextView: View {
    let text: String
    let font: Font
    let maxWidth: CGFloat?
    let alignment: Alignment
    let style: Color

    var body: some View {
        VStack {
            Text(text)
                .padding()
                .font(font)
                .frame(maxWidth: maxWidth, alignment: alignment)
                .foregroundStyle(style)
        }
    }
}
