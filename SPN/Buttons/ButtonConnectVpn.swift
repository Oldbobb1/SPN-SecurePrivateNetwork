import SwiftUI

struct ButtonConnectVpn: View {
    @Binding var isConnected: Bool
    @Binding  var isLoad: Bool
    var body: some View {
        CustomButtons(
            action: { connected() },
            imageParametr: ImageButtonConfiguration(
                systemName: "power.circle.fill",
                width: 50,
                height: 50,
                imageForegroundStyle:  isConnected ? .green : .red,
                padding: .all
            )
        )
    }
    func connected() {
        let connect = Connect(isLoad: $isLoad, isConnected: $isConnected)
        connect.connect()
    }
}

#Preview {
    ButtonConnectVpn(isConnected: .constant(true), isLoad: .constant(true))
}
