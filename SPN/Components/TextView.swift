import SwiftUI

struct TextView: View {
    let text: String
    let style: Color
    var body: some View {
        VStack {
            Text(text)
                .padding()
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundStyle(style)
        }
    }
}
