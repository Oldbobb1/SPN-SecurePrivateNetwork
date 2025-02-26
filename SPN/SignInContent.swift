import SwiftUI

struct SignInContent: View {
    @StateObject private var saveModel = UserSettings()
    @StateObject private var frame = FrameModel()
    @Binding var signIn: Bool
    var body: some View {
        VStack(spacing: 20) {
            if saveModel.isRegistr {
                Account()
            } else {
                ZStack {
                    CustomText(textParametr: TextConfiguration(
                        spacerTop: true,
                        text: "Welcome",
                        font: .system(.largeTitle).weight(.bold),
                        padding: (.top, 20),
                        spacerBottom: true)
                    )
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

