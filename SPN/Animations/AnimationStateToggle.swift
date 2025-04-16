import SwiftUI

struct AnimationStateToggle {
    @Binding var isStatusActive: Bool
    @Binding var isStatusVisible: Bool
    func action() {
        withAnimation(.easeInOut(duration: 0.3)) {
            isStatusActive.toggle()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isStatusVisible = isStatusActive
        }
    }
}
