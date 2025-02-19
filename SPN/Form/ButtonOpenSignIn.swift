import SwiftUI

struct ButtonOpenSignIn: View {
    @Binding var signIn: Bool
    @Binding var showSignIn: Bool
    var body: some View {
        ButtonImageView(action: {
            openSignIn()
        },
                        systemName: "person.circle.fill",
                        style:   .mint,
                        fillColor: Color(UIColor.systemGray6)
        )
    }
    func openSignIn() {
        let action = Actions(isStatusActive: $signIn, isStatusVisible: $showSignIn)
        action.action()
    }
}


