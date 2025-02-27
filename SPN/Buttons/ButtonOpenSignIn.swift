import SwiftUI

struct ButtonOpenSignIn: View {
    @Binding var signIn: Bool
    @Binding var showSignIn: Bool
    var body: some View {
        CustomButtons(
            action: { openSignIn() },
            imageParametr: ImageButtonConfiguration(
                systemName: "person.circle.fill",
                width: 50,
                height: 50,
                imageForegroundStyle: .mint,
                padding: .all
            )
        )
    }
    func openSignIn() {
        let action = AnimationStateToggle(isStatusActive: $signIn, isStatusVisible: $showSignIn)
        action.action()
    }
}


