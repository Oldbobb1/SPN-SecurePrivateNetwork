import SwiftUI

struct SignInView: View {
    @StateObject private var saveModel = UserSettings()
    @Binding var signIn: Bool
    var body: some View {
        GeometryReader { geometry in
                VStack {
                    if saveModel.isRegistr {
                        Account()
                    } else {
                    Spacer()
                    SignInContent(signIn: $signIn)
                        .frame(
                            maxWidth: geometry.size.width * 0.95,
                            maxHeight: geometry.size.height * 0.5
                        )
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    SignInView(signIn: .constant(true))
}







