//
//  Content.swift
//  SPN
//
//  Created by Bobbi R. on 6.04.25.
//
import SwiftUI

struct Content: View {
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
            LoadingView(isLoad: $viewModel.isLoad)
            //здесь реализация входа в эпл аккаунт
//            AnimatedShowView(
//                isStatusVisible: $viewModel.showSignIn,
//                isStatusActive: $viewModel.signIn,
//                content: SignInView(signIn: $viewModel.signIn)
//            )
            AnimatedShowView(
                isStatusVisible: $viewModel.showRegions,
                isStatusActive: $viewModel.regions,
                content: RegionsView(
                    currentRegion: $viewModel.currentRegion,
                    isConnected: $viewModel.isConnected
                )
            )
            AnimatedShowView(
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
