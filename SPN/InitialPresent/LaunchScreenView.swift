import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.black, .blue]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                ImageView(
                    nameImage: "LaunchImage",
                    width: 250,
                    height: 250,
                    cornerRadius: 250,
                    maxWidth: .infinity,
                    alignment: .center
                )
                TextView(text: "Secure Private Network", style: .white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    LaunchScreenView()
}
