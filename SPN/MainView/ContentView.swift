import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = VPNConnectionViewModel()
    var body: some View {
        Content()
    }
}

#Preview {
    ContentView()
}
