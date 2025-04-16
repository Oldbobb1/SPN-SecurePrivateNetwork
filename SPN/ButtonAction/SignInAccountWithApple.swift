import SwiftUI

struct SignInAccountWithApple {
    @Binding var signIn: Bool
    @Binding var showSignIn: Bool
    func signInWithApple() {
        let action = AnimationStateToggle(
            isStatusActive: $signIn,
            isStatusVisible: $showSignIn
        )
        action.action()
    }
}
