import SwiftUI

struct TermsAndPrivacy: View {
    @State private var show = false
    @State private var showElement = false
    @Binding var showPrivacyPolicy: Bool
    @State private var isLoad = false
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(
                    colors: [.orange, .purple]
                ),
                center: .center,
                startRadius: 100,
                endRadius: 450
            )
                .ignoresSafeArea()
            VStack {
                TypingTextView(text: "Welcome", showElement: $showElement)
                    .padding(.top, 150)
                Spacer()
                if showElement {
                    TermsAndPrivacyFiles()
                    AgreeToggle(show: $show, showPrivacyPolicy: $showPrivacyPolicy)
                    Spacer()
                        .opacity(showElement ? 1 : 0)
                        .scaleEffect(showElement ? 1 : 0.5)
                        .animation(.easeIn(duration: 0.9), value: showElement)
                }
            }
            .padding()
        }
    .animation(.easeInOut(duration: 0.9), value: showElement)
    }
}
