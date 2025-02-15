import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
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
        .background(.black)        
    }
}

#Preview {
    LaunchScreenView()
}
