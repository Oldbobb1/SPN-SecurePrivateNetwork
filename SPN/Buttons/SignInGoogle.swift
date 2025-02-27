import SwiftUI

struct SignInWithGoogle: View {
    var body: some View {
        VStack {
            CustomButtons(
                action: { },
                imageParametr: ImageButtonConfiguration(
                    systemName: "g.circle.fill",
                    imageForegroundStyle: .green
                ),
                textParametr: TextButtonConfiguration(
                    text: "Sign in with Google",
                    textHeight: 50,
                    maxWidth: .infinity
                ),
                spacingParamets: SpacingConfiguration(
                    padding: .horizontal,
                    spacer: true
                )
            )
        }
    }
}
//GIDSignIn.sharedInstance.signIn(with: <#GIDSignIn#>, presenting: <#UIViewController#>) { user, error in }

#Preview {
    SignInWithGoogle()
}
