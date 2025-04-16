import SwiftUI

struct AccountViews: View {
    @State private var userName = "userName"
    @State private var userImage = "userImage"
    @StateObject private var frame = FrameModel()

    @StateObject private var viewModel = VPNConnectionViewModel()
    var body: some View {
        VStack {
            ProfileImage(userImage: $userImage)
            CustomText(
                textParametr: TextConfiguration(
                    text: userName,
                    foregroundStyle: .primary
                )
            )
            Spacer()
            ButtonSubscribe()
            HStack(spacing: 50) {
                ButtonDeleteAccount()
                ButtonOutAccount()
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray5))
                .stroke(.black, lineWidth: 4)
                .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
                .shadow(color: .gray.opacity(0.7), radius: 2, x: -1, y: -2)
        )
        .offset(y: frame.offset)
        .onAppear {
            withAnimation {
                frame.offset = 0
            }
        }
    }
}
