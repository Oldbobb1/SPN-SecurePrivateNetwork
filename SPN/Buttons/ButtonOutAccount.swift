import SwiftUI

struct ButtonOutAccount: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            CustomButtons(
                action: {
                    showAlert = true
                },
                imageParametr: ImageButtonConfiguration(
                    systemName: "figure.walk.circle.fill",
                    width: 50,
                    height: 50,
                    //                    imageForegroundStyle: .mint,
                    //                    padding: .all
                ),
                shadowStyle: CustomShadowConficuration(
                    cornerRadius: 25,
                    strokeColor: .black,
                    lineWidth: 6,
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
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("logout"),
                    message: Text("Do you want sure logout?"),
                    primaryButton: .destructive(Text("logout")) {
                        // Логика для выхода
                    },
                    secondaryButton: .cancel()
                )
            }
        }
    }
}

#Preview {
    ButtonOutAccount()
}
