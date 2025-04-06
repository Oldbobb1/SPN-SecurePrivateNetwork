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
    func connected() {
        let connect = Connect(isLoad: $isLoad, isConnected: $isConnected)
        connect.connect()
    }
}

#Preview {
    ButtonConnectVpn(
        isConnected: .constant(true),
        isLoad: .constant(true)
    )
}
