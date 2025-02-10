import SwiftUI

struct SubscriptionOptionView: View {
    let title: String
    let price: String
    let description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .bold()
                .italic()
            Text(price)
                .font(.title)
                .bold()
                .foregroundColor(.red)
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
            Button(action: {
                // Действие при покупке
            }) {
                Text("Купить")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
        }
        .padding(.all)
        .frame(width: 300,height: 250,alignment: .leading)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(25)
        .shadow(radius: 5)
    }
}

#Preview {
    SubscriptionOptionView(title: "month", price: "9$", description: "fuck")
}
