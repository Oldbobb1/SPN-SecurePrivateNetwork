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
            ),
            shadowStyle: CustomShadowConficuration(
                cornerRadius: 25,
                strokeColor: .black,
                lineWidth: 4,
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
    }
    func openRegion() {
        let action = AnimationStateToggle(isStatusActive: $regions, isStatusVisible: $showRegions)
        action.action()
    }
}

#Preview {
    ButtonOpenRegions(regions: .constant(true), showRegions: .constant(true))
}
