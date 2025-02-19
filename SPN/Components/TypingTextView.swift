import SwiftUI

struct TypingTextView: View {
    let text: String
    @State private var currentIndex: String.Index?
    @State private var isTyping = false
    @Binding var showElement: Bool
    var body: some View {
            Text(typedText)
                .font(.system(size: 80))
                .bold()
                .fontWeight(.heavy)
                .onAppear {
                    startTyping()
                }
                .foregroundStyle(LinearGradient(colors: [.black, .blue], startPoint: .top, endPoint: .bottom))
    }
    private var typedText: String {
        guard let currentIndex = currentIndex else { return "" }
        return String(text[..<currentIndex])
    }
    private func startTyping() {
        isTyping = true
        currentIndex = text.startIndex
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if let currentIndex = currentIndex, currentIndex < text.endIndex {
                self.currentIndex = text.index(after: currentIndex)
            } else {
                timer.invalidate()
                isTyping = false
                showElement = true
            }
        }
    }
}


