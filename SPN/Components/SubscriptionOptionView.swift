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
                //action
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
        .frame(
            width: 350,
            height: 220,
            alignment: .leading
        )
//        .background(Color(.secondarySystemBackground))
//        .cornerRadius(25)
//        .shadow(radius: 5)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray6))
                .stroke(Color.black, lineWidth: 2)
//                                    .fill(Color.blue)
                .shadow(
                    color: Color.black.opacity(0.5),
                    radius: 6, x: 2,
                    y: 2
                )
                .shadow(
                    color: Color(UIColor.systemGray3),
                    radius: 3, x: -1, y: -1)
        )
    }
}

#Preview {
    SubscriptionOptionView(
        title: "month",
        price: "9$",
        description: "what"
    )
}
