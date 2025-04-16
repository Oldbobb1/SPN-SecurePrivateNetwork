import SwiftUI

struct OpenScreenConnectStatus {
    @Binding var statusConnect: Bool
    @Binding var showStatusConnect: Bool
    func screenStatus() {
        let action = AnimationStateToggle(
            isStatusActive: $statusConnect,
            isStatusVisible: $showStatusConnect
        )
        action.action()
    }
}
