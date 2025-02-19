import SwiftUI

struct SignInContent: View {
    @StateObject private var saveModel = SavePropertyModel()
    @StateObject private var frame = FrameModel()
    @Binding var signIn: Bool
    var body: some View {
        VStack(spacing: 20) {
            if saveModel.isRegistr {
                Account()
            } else {
                ZStack {
                    ButtonCloseSignInView(offset: $frame.offset, signIn: $signIn)
                    WelcomeText(text: "Welcome")
                }
                Spacer()
                ButtonCreateAccount(isRegistr: $saveModel.isRegistr)
                DividerWithText()
                SignInApple()
                SignInGoogle()
            }
        }
        .background(RoundedRectangle(cornerRadius: 25)
            .fill(Color(UIColor.systemGray5))
            .stroke(.black, lineWidth: 4)
            .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
            .shadow(color: .gray.opacity(0.7), radius: 4, x: -1, y: -2)
        )
        .offset(y: frame.offset)
        .onAppear{
            withAnimation {
                frame.offset = 0
            }
        }
    }
}
