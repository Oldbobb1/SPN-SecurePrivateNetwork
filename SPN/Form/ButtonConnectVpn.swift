import SwiftUI

struct ButtonConnectVpn: View {
    @Binding var isConnected: Bool
    @Binding  var isLoad: Bool
    
    var body: some View {
        ButtonImageView(action: {
            connected()
        },
                        systemName: "power.circle.fill",
                        style: isConnected ? .green : .red,
                        fillColor: Color(UIColor.systemGray6)
        )
    }
    func connected() {
        let connect = Connect(isLoad: $isLoad, isConnected: $isConnected)
        connect.connect()
    }
}


