import SwiftUI

struct ButtonOpenRegions: View {
    @Binding var regions: Bool
    @Binding var showRegions: Bool
    var body: some View {
        CustomButtons(
            action: { openRegion() },
            imageParametr: ImageButtonConfiguration(
                systemName: "globe",
                width: 50,
                height: 50,
                imageForegroundStyle: .blue,
                padding: .all
            )
        )

    }
    func openRegion() {
        let action = AnimationStateToggle(isStatusActive: $regions, isStatusVisible: $showRegions)
        action.action()
    }
}

#Preview {
    ButtonOpenRegions(regions: .constant(true), showRegions: .constant(true))
}
