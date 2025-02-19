import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = VPNViewModel()
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea()
            VStack {
                HStack(spacing: 40) {
                    ButtonConnectVpn(
                        isConnected: $viewModel.isConnected,
                        isLoad: $viewModel.isLoad
                    )
                    ButtonOpenRegions(
                        regions: $viewModel.regions,
                        showRegions: $viewModel.showRegions
                    )
                }
                .padding(.bottom, 20)
                HStack(spacing: 40) {
                    ButtonOpenConnectStatus(
                        statusConnect: $viewModel.statusConnect,
                        showStatusConnect: $viewModel.showStatusConnect
                    )
                    ButtonOpenSignIn(
                        signIn: $viewModel.signIn,
                        showSignIn: $viewModel.showSignIn
                    )
                }
                .padding()
            }
            LoadView(isLoad: $viewModel.isLoad)
            ShowView(
                isStatusVisible: $viewModel.showSignIn,
                isStatusActive: $viewModel.signIn,
                content: SignInView(signIn: $viewModel.signIn)
            )
            ShowView(
                isStatusVisible: $viewModel.showRegions,
                isStatusActive: $viewModel.regions,
                content: RegionsView(
                    currentRegion: $viewModel.currentRegion,
                    isConnected: $viewModel.isConnected
                )
            )
            ShowView(
                isStatusVisible: $viewModel.showStatusConnect,
                isStatusActive: $viewModel.statusConnect,
                content: ConnectionStatusView(
                    isConnected: $viewModel.isConnected,
                    currentRegion: $viewModel.currentRegion
                )
            )
        }
    }
}

#Preview {
    ContentView()
}





