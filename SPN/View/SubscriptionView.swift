import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ZStack {
//                                        LinearGradient(gradient: Gradient(colors: [Color.orange, Color.black ,Color.green]), startPoint: .top, endPoint: .bottom)
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
            VStack {
                Text("Выберите вариант подписки Выберите вариант подписки Выберите вариант подписки Выберите вариант подписки Выберите вариант подписки Выберите вариант подписки Выберите вариант подписки")
                    .font(.headline)
//                    .foregroundStyle(.white)
                    .padding(.top, 40)
                    .padding(.leading)
                    .padding(.trailing)
                    .lineLimit(13)
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        SubscriptionOptionView(
                            title: "For a month",
                            price: "9.99 $",
                            description: "Full access for 1 month"
                        )
                        SubscriptionOptionView(
                            title: "For 6 month",
                            price: "49.99 $",
                            description: "Full access for 6 months"
                        )
                        SubscriptionOptionView(
                            title: "For year",
                            price: "89.99 $",
                            description: "Full access for a year"
                        )
                        Spacer()
                    }
                    .padding(.all)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    SubscriptionView()
}
