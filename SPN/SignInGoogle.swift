import SwiftUI

struct SignInGoogle: View {
    var body: some View {
        VStack {
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
                shadowColor: .black
            )
            .padding(.horizontal)
            Spacer()
        }
    }
}
//GIDSignIn.sharedInstance.signIn(with: <#GIDSignIn#>, presenting: <#UIViewController#>) { user, error in }

