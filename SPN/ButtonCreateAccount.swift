import SwiftUI

struct ButtonCreateAccount: View {
    @State private var registr = false
    @Binding var isRegistr: Bool
    var body: some View {
        VStack {
            CustomButtonView(
                action: {
                    self.registr = true
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
            .padding(.horizontal)
            .fullScreenCover(isPresented: $registr, content: {
                RegistrView()
            })
            .onChange(of: isRegistr) { [isRegistr] in
                if isRegistr {
                    registr = false
                }
                
            }
        }
    }
}


