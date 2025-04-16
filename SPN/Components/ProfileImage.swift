import SwiftUI

struct ProfileImage: View {
    @Binding var userImage: String
    var body: some View {
        VStack {
            Image(userImage)  // Замените на актуальный ресурс изображения
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.top)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ProfileImage(userImage: .constant("username"))
}
