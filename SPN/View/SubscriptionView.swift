import SwiftUI

struct SubscriptionView: View {
    var body: some View {
        NavigationView {
            ZStack {
//                LinearGradient(gradient: Gradient(colors: [Color.orange, Color.green]), startPoint: .top, endPoint: .bottom)
                Color(UIColor.systemGray5)
                    .ignoresSafeArea(.all)
                VStack{
                    Text("Выберите вариант подписки")
                        .font(.title)
                        .padding(.bottom, 20)
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            SubscriptionOptionView(title: "На месяц", price: "9.99 $", description: "Полный доступ на 1 месяц")
                            SubscriptionOptionView(title: "На 6 мес", price: "49.99 $", description: "Полный доступ На 6 месяцев")
                            SubscriptionOptionView(title: "На год", price: "89.99 $", description: "Полный доступ на 1 год")
                            Spacer()
                        }
                        .padding(.all)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    .scrollIndicators(.hidden)
                        .navigationBarTitle("Подписка", displayMode: .inline)
                    }
                }
        }
    }
}

#Preview {
    SubscriptionView()
}

