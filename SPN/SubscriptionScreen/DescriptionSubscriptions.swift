import SwiftUI

struct DescriptionSubscriptions: View {
    @State private var active = false
    var body: some View {
        VStack {
            Text("Select subscription")
                .font(.headline)
                //                .foregroundStyle(.white)
                .padding(.top, 40)
                .padding(.leading)
                .padding(.trailing)
                .lineLimit(13)
            Spacer()
            HStack {
                Text("subscription:\(active)")
                Spacer()
            }
        }
    }
}
