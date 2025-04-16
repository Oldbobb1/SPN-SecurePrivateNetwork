import SwiftUI

struct OpenSubscriptionScreen {
    @Binding var statusSubscription: Bool
    @Binding var showSubscription: Bool
    func screenSubscription() {
        let action = AnimationStateToggle(
            isStatusActive: $statusSubscription,
            isStatusVisible: $showSubscription
        )
        action.action()
    }
}
