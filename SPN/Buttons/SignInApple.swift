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
                    text: "Sign in with Apple"
                ),
                spacingParamets: SpacingConfiguration(
                    height: 50,
                    maxWidth: .infinity,
                    padding: .horizontal
                )
            )
        }
    }
}

#Preview {
    SignInWithApple()
}
