import SwiftUI

struct Connect {
    @Binding var isLoad: Bool
    @Binding var isConnected: Bool
    func connect() {
        isLoad = true
        if isConnected {
            //            VPNManager.shared.disconnect()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isConnected = false
                isLoad = false
            }
        } else {
            //            VPNManager.shared.setupIKEv2VPN()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                //                VPNManager.shared.connectVPN()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isConnected = true
                    isLoad = false
                }
            }
        }
    }
}
