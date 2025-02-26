import SwiftUI

struct AnimatedShowView<Content: View>: View {
    @Binding var isStatusVisible: Bool
    @Binding var isStatusActive: Bool
    let content: Content
    var body: some View {
        if isStatusVisible {
            Color.gray.opacity(0.2)
                .ignoresSafeArea(.all)
                .onTapGesture {
                    withAnimation(.easeIn(duration: 0.1)) {
                        isStatusActive = false
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        isStatusVisible = false
                    }
                }
            content
            .offset(y: isStatusActive ? 0 : UIScreen.main.bounds.height)
            .animation(.easeInOut(duration: 0.2), value: isStatusActive)
        }
    }
}


