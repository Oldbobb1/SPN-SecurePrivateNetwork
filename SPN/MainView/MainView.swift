import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = VPNConnectionViewModel()
    var body: some View {
        MainViews()
    }
}

#Preview {
    MainView()
}
