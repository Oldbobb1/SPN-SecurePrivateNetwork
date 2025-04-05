//
//  VPNViewModel.swift
//  SPN
//
//  Created by Bobbi R. on 24.02.25.
//


import SwiftUI
import Combine

class VPNConnectionViewModel: ObservableObject {
    @Published var isConnected = false
    @Published var isLoad = false
    @Published var currentRegion = ""
    @Published var statusConnect = false
    @Published var regions = false
    @Published var signIn = false
    @Published var showStatusConnect = false
    @Published var showRegions = false
    @Published var showSignIn = false
}
