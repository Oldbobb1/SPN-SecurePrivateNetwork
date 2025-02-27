import SwiftUI

struct ButtonCloseRegistrView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        CustomButtons(
            action: { dismiss() },
            imageParametr: ImageButtonConfiguration(
                systemName: "x.circle",
                width: 35,
                height: 35,
                imageForegroundStyle: Color(UIColor.label)
            ),
            spacingParamets: SpacingConfiguration(leading: 20)
        )
    }
}
