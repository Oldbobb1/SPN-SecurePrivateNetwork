import SwiftUI

struct ButtonCreateProfile: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var saveModel = SavePropertyModel()
    var body: some View {
        VStack {
            CustomButtonView(
                action: {
                    self.saveModel.isRegistr = true
                    dismiss()
                },
                text: "Create Profile",
                foregroundStyle: .white,
                radius: 25,
                fillColor: .green.opacity(0.8),
                strokeColor: .green,
                firstShadowColor: .black.opacity(0.6)
            )
        }
        .padding()
        Spacer()
    }
}
