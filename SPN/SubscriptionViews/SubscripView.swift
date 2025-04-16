import SwiftUI

struct SubscripView: View {
    @StateObject private var frame = FrameModel()
    var body: some View {
        VStack {
            DescriptionSubscriptions()
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    SubscriptionOption(
                        title: "For a month",
                        price: "1.99 $",
                        description: "Full access for 1 month"
                    )
                    SubscriptionOption(
                        title: "For 6 month",
                        price: "10.99 $",
                        description: "Full access for 6 months"
                    )
                    SubscriptionOption(
                        title: "For year",
                        price: "20.99 $",
                        description: "Full access for a year"
                    )
                    Spacer()
                }
                .padding(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .scrollIndicators(.hidden)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray5))
                .stroke(.black, lineWidth: 4)
                .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
                .shadow(color: .gray.opacity(0.7), radius: 2, x: -1, y: -2)
        )
        .offset(y: frame.offset)
        .onAppear {
            withAnimation {
                frame.offset = 0
            }
        }
    }
}

#Preview {
    SubscripView()
}
