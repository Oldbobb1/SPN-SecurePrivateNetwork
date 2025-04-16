import SwiftUI

struct VPNConnection {
    @Binding var isConnected: Bool
    @Binding var isLoad: Bool
    func connectionVpn() {
        let connect = Connect(
            isLoad: $isLoad,
            isConnected: $isConnected
        )
        connect.connect()
    }
}
