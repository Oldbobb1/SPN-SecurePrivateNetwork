import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(
                    colors: [.black, .blue]
                ),
                center: .center,
                startRadius: 10,
                endRadius: 400
            )
                .ignoresSafeArea()
            VStack {
                CustomImageView(
                    imageParametr: ImageViewConfiguration(
                        nameImage: "LaunchImage",
                        width: 250,
                        height: 250,
                        cornerRadius: 250,
                        maxWidth: .infinity,
                        alignment: .center
                    )
                )
                CustomText(
                    textParametr: TextConfiguration(
                        text: "Secure Private Network",
                        font: .system(.largeTitle),
                        foregroundStyle: .white
                    )
                )
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
