import SwiftUI

struct ButtonCreateProfile: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var saveModel = UserSettings()
    var body: some View {
        VStack {
            CustomButtons(
                action: {
                    self.saveModel.isRegistr = true
                    dismiss()
                },
                textParametr: TextButtonConfiguration(
                    text: "Create Profile",
                    font: .headline,
                    textForegroundStyle: .white
                ),
                spacingParamets: SpacingConfiguration(
                    height: 50,
                    maxWidth: .infinity
                )
            )
        }
        .padding()
        Spacer()
    }
}
