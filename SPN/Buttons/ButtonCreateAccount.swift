import SwiftUI

struct ButtonCreateAccount: View {
    @State private var registr = false
    @Binding var isRegistr: Bool
    var body: some View {
        VStack {
            CustomButtons(
                action: {
                    self.registr = true
                },
                textParametr: TextButtonConfiguration(
                    text: "Create Account",
                    font: .headline,
                    textForegroundStyle: .primary
                ),
                spacingParamets: SpacingConfiguration(
                    height: 50,
                    maxWidth: .infinity,
                    padding: .horizontal
                )
            )
            .fullScreenCover(isPresented: $registr, content: { RegistrView() })
            .onChange(of: isRegistr) { [isRegistr] in
                if isRegistr {
                    registr = false
                }
                
            }
        }
    }
}


