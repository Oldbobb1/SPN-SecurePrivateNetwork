import SwiftUI

struct TermsAndPrivacyFiles: View {
    @State private var selectFile: String? = nil
    var body: some View {
        HStack {
            Button("Privacy Policy") {
                selectFile = "Privacy Policy"
            }
            Text("and")
                .font(.system(size: 20))
                .foregroundStyle(.white)
            Button("Terms of Use") {
                selectFile = "Terms of Use"
            }
        }
        .fullScreenCover(item: $selectFile) { file in
            DocumentView(fileName: file)
        }
        .padding(.bottom, 20)
        .foregroundStyle(.primary)
        .font(.system(size: 20))
    }
}
