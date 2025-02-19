import SwiftUI
import AuthenticationServices

struct SignInApple: View {
    var body: some View {
        VStack {
            IconTextButton(
                action: {
                    
                },
                systemName: "apple.logo",
                width: 25,
                height: 25,
                foregroundStyle: .primary,
                text: "Sign in with Apple",
                textStyle: .white,
                radius: 25,
                fillColor: .black,
                opacity: 0.45,
                strokeColor: .black.opacity(0.9),
                shadowColor: .black.opacity(0.5)
            )
            .padding(.horizontal)
        }
    }
}
