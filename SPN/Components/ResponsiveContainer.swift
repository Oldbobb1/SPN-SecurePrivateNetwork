import SwiftUI

struct ResponsiveContainer<Content: View>: View {
    let content: () -> Content
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                content()
                    .frame(
                        maxWidth: geometry.size.width * 0.95,
                        maxHeight: geometry.size.height * 0.5
                    )
                    .padding(.horizontal)
            }
        }
    }
}
