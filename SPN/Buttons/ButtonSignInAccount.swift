import SwiftUI

struct ButtonSignInAccount: View {
    @Binding var signIn: Bool
    @Binding var showSignIn: Bool
    var body: some View {
        CustomButtons(
            action: {
                let sign = SignInAccountWithApple(
                    signIn: $signIn,
                    showSignIn: $showSignIn
                )
                sign.signInWithApple()
            },
            imageParametr: ImageButtonConfiguration(
                systemName: "person.circle.fill",
                width: 50,
                height: 50,
                imageForegroundStyle: .mint,
                padding: .all
            ),
            shadowStyle: CustomShadowConficuration(
                cornerRadius: 25,
                strokeColor: .black,
                lineWidth: 4,
                shadowColor1: .black,
                opacity1: 0.5,
                shadowRadius1: 1,
                x1: 2,
                y1: 2,
                shadowColor2: .gray,
                opacity2: 0.7,
                shadowRadius2: 2,
                x2: -1,
                y2: -2
            )
        )
    }
}

#Preview {
    ButtonSignInAccount(
        signIn: .constant(true),
        showSignIn: .constant(true)
    )
}
