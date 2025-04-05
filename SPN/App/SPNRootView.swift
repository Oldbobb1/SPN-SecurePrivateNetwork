import SwiftUI

struct SPNRootView: View {
    @State private var showLaunchScreen = true
    @AppStorage("showPrivacyPolicy") private var showPrivacyPolicy = true
    var body: some View {
        if showLaunchScreen {
            LaunchScreenView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                        showLaunchScreen = false
                    }
                }
        } else if showPrivacyPolicy {
            TermsAndPrivacyView(showPrivacyPolicy: $showPrivacyPolicy)
        } else {
            ContentView()
//                    .preferredColorScheme(.dark)
        }
    }
}
