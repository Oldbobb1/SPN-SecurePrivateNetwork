import SwiftUI

struct DescriptionSubscription: View {
    var body: some View {
        VStack {
            Text("Выберите вариант подписки")
                .font(.headline)
//                .foregroundStyle(.white)
                .padding(.top, 40)
                .padding(.leading)
                .padding(.trailing)
                .lineLimit(13)
        }
    }
}
