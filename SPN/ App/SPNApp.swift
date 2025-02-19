import SwiftUI

@main
struct SPNApp: App {
    @State private var showLaunchScreen = true
//    @State private var showPrivacyPolicy = true
    @AppStorage("showPrivacyPolicy") private var showPrivacyPolicy = true
    var body: some Scene {
        WindowGroup {
            if showLaunchScreen {
                LaunchScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            showLaunchScreen = false
                        }
                    }
            } else if showPrivacyPolicy {
                PrivacyPolicyAndTermsOfUse(showPrivacyPolicy: $showPrivacyPolicy)
            } else {
                ContentView()
//                    .preferredColorScheme(.dark)
            }
        }
    }
}
