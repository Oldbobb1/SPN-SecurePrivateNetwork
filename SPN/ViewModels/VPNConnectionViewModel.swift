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



//class VPNConnectionViewModel: ObservableObject {
//    @Published var isConnected = false
//    @Published var isLoading = false
//    @Published var statusConnect = false
//    
////    func connect() {
////          isLoading = true
////          DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////              self.isConnected.toggle()
////              self.isLoading = false
////          }
////      }
//}
//
//
//class VPNRegionViewModel: ObservableObject {
//    @Published var currentRegion = "Default"
//    @Published var showRegions = false
//    //cюда можно добавить массив с регионами
//    
////    func selectRegion(_ region: String) {
////         currentRegion = region
////         showRegions = false
////     }
//}
//
//
//class VPNAuthViewModel: ObservableObject {
//    @Published var isSignedIn = false
//    @Published var showSignIn = false
//
//    func signIn() {
//        isSignedIn = true
//        showSignIn = false
//    }
//
//    func signOut() {
//        isSignedIn = false
//    }
//}
