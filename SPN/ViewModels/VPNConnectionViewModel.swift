import Combine
import SwiftUI

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

    @Published var statusSubscription = false
    @Published var showSubscription = false
}
