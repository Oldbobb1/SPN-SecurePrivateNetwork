import SwiftUI

struct OpenRegionSelectScreen {
    @Binding var regions: Bool
    @Binding var showRegions: Bool
    func regionSelectScreen() {
        let action = AnimationStateToggle(
            isStatusActive: $regions,
            isStatusVisible: $showRegions
        )
        action.action()
    }
}
