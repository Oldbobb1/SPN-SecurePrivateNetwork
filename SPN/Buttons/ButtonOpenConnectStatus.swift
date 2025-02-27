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
