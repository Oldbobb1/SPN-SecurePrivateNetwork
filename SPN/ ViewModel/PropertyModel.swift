import SwiftUI

class PropertyModel: ObservableObject {
    @Binding var isRegistr: Bool
    @Binding var offset: CGFloat
    @Binding var showElement: Bool
    
    init(
        isRegistr: Binding<Bool>,
        offset: Binding<CGFloat>,
        showElement: Binding<Bool>
    ) {
        self._isRegistr = isRegistr
        self._offset = offset
        self._showElement = showElement
    }
}

//class SignInModel: ObservableObject {
//    @Binding var signIn: Bool
//    @Binding var showSignIn: Bool
//    
//    init(
//        signIn: Bool,
//        showSignIn: Bool
//    ) {
//        self.signIn = signIn
//        self.showSignIn = showSignIn
//    }
//}
//
//class ConnectionModel: ObservableObject {
//    @Binding var isConnected: Bool
//    @Binding var statusConnect: Bool
//    @Binding var showStatusConnect: Bool
//    
//    init(
//        isConnected: Bool,
//        statusConnect: Bool,
//        showStatusConnect: Bool
//    ) {
//        self.isConnected = isConnected
//        self.statusConnect = statusConnect
//        self.showStatusConnect = showStatusConnect
//    }
//}
//
//class RegionModel: ObservableObject {
//    @Binding var currentRegion: String
//    @Binding var regions: Bool
//    @Binding var showRegions: Bool
//    @Binding var selectedCountry: String?
//    
//    init(
//        currentRegion: String,
//        regions: Bool,
//        showRegions: Bool,
//        selectedCountry: String? = nil
//    ) {
//        self.currentRegion = currentRegion
//        self.regions = regions
//        self.showRegions = showRegions
//        self.selectedCountry = selectedCountry
//    }
//}
//
//class SearchModel: ObservableObject {
//    @Binding var search: String
//    @Binding var isLoad: Bool
//    
//    init(
//        search: String,
//        isLoad: Bool
//    ) {
//        self.search = search
//        self.isLoad = isLoad
//    }
//}
//
//class StatusModel: ObservableObject {
//    @Binding var isStatusVisible: Bool
//    @Binding var isStatusActive: Bool
//    @Binding var showPrivacyPolicy: Bool
//    
//    init(
//        isStatusVisible: Bool,
//        isStatusActive: Bool,
//        showPrivacyPolicy: Bool
//    ) {
//        self.isStatusVisible = isStatusVisible
//        self.isStatusActive = isStatusActive
//        self.showPrivacyPolicy = showPrivacyPolicy
//    }
//}

