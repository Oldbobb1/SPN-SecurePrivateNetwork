import SwiftUI

struct MainViews: View {
    @StateObject private var viewModel = VPNConnectionViewModel()
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
                    ButtonOpenRegionSelectScreen(
                        regions: $viewModel.regions,
                        showRegions: $viewModel.showRegions
                    )
                }
                .padding(.bottom, 20)
                HStack(spacing: 40) {
                    ButtonOpenScreenConnectStatus(
                        statusConnect: $viewModel.statusConnect,
                        showStatusConnect: $viewModel.showStatusConnect
                    )
                    ButtonSignInAccount(
                        signIn: $viewModel.signIn,
                        showSignIn: $viewModel.showSignIn
                    )
                }
                .padding()
            }
            LoadingView(isLoad: $viewModel.isLoad)

            AnimatedShowView(
                isStatusVisible: $viewModel.showSignIn,
                isStatusActive: $viewModel.signIn,
                content: AccountView()
            )
            AnimatedShowView(
                isStatusVisible: $viewModel.showRegions,
                isStatusActive: $viewModel.regions,
                content: Regions(
                    currentRegion: $viewModel.currentRegion,
                    isConnected: $viewModel.isConnected
                )
            )
            AnimatedShowView(
                isStatusVisible: $viewModel.showStatusConnect,
                isStatusActive: $viewModel.statusConnect,
                content: ConnectionStatus(
                    isConnected: $viewModel.isConnected,
                    currentRegion: $viewModel.currentRegion
                )
            )
        }
    }
}
