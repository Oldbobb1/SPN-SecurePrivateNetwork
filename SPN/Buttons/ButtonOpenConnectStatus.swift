import SwiftUI

struct ButtonOpenConnectStatus: View {
    @Binding var statusConnect: Bool
    @Binding var showStatusConnect: Bool
    var body: some View {
        CustomButtons(
            action: { openStatus() },
            imageParametr: ImageButtonConfiguration(
                systemName: "info.circle.fill",
                width: 50,
                height: 50,
                imageForegroundStyle: .yellow,
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
    func openStatus() {
        let action = AnimationStateToggle(isStatusActive: $statusConnect, isStatusVisible: $showStatusConnect)
        action.action()
    }
} 

#Preview {
    ButtonOpenConnectStatus(statusConnect: .constant(true), showStatusConnect: .constant(true))
}
