import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
            VStack {
                DescriptionSubscription()
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        SubscriptionOption(
                            title: "For a month",
                            price: "9.99 $",
                            description: "Full access for 1 month"
                        )
                        SubscriptionOption(
                            title: "For 6 month",
                            price: "49.99 $",
                            description: "Full access for 6 months"
                        )
                        SubscriptionOption(
                            title: "For year",
                            price: "89.99 $",
                            description: "Full access for a year"
                        )
                        Spacer()
                    }
                    .padding(.all)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .scrollIndicators(.hidden)
            }
        }
    }
}

#Preview {
    SubscriptionView()
}
