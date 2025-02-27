import SwiftUI
import AuthenticationServices

struct SignInWithApple: View {
    var body: some View {
        VStack {
            CustomButtons(
                action: { },
                imageParametr: ImageButtonConfiguration(
                    systemName: "apple.logo",
                    width: 25
                ),
                textParametr: TextButtonConfiguration(
                    text: "Sign in with Apple",
                    textHeight: 50,
                    maxWidth: .infinity
                ),
                spacingParamets: SpacingConfiguration(
                    padding: .horizontal
                )
            )
        }
    }
}

#Preview {
    SignInWithApple()
}
