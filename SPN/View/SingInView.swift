import AuthenticationServices
import SwiftUI

struct SingInView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
            //                .preferredColorScheme(.dark)
            VStack(spacing: 20) {
                Text("Welcome")
                    .font(.system(.largeTitle).weight(.bold))
                    .padding(.top, 30)
                Spacer()
                CustomButtonView(
                    action: {

                    },
                    text: "Create Account",
                    foregroundStyle: .primary,
                    radius: 25,
                    fillColor: Color(
                        UIColor.systemGray6.withAlphaComponent(0.5)
                    ),
                    strokeColor: .black,
                    firstShadowColor: .black.opacity(0.5)
                )
                DividerWithText()
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
                    opacity: 0.6,
                    strokeColor: .black.opacity(0.9),
                    shadowColor: .black.opacity(0.5)
                )
                IconTextButton(
                    action: {

                    },
                    systemName: "g.circle.fill",
                    width: 25,
                    height: 25,
                    foregroundStyle: .green,
                    text: "Sign in with Apple",
                    textStyle: Color(UIColor.label),
                    radius: 25,
                    fillColor: .red,
                    opacity: 0.78,
                    strokeColor: .red,
                    shadowColor: .black.opacity(0.5)
                )
                Spacer()
            }
            .padding()
        }
    }
}

#Preview() {
    SingInView()
}


//GIDSignIn.sharedInstance.signIn(with: <#GIDSignIn#>, presenting: <#UIViewController#>) { user, error in }
