import SwiftUI

struct WelcomeText: View {
    let text: String
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .font(.system(.largeTitle).weight(.bold))
                .padding(.top, 20)
            Spacer()
        }

    }
}
