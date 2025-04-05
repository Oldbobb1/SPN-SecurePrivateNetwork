import SwiftUI

struct TermsAndPrivacyView: View {
    @Binding var showPrivacyPolicy: Bool
    var body: some View {
        TermsAndPrivacy(showPrivacyPolicy: $showPrivacyPolicy)
    }
}

#Preview {
    TermsAndPrivacy(showPrivacyPolicy: .constant(true))
}
