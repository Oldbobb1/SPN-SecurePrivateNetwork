import SwiftUI

struct DividerWithText: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.primary)
            Text("Or")
                .padding(.horizontal)
                .font(.system(.headline).weight(.bold))
            Rectangle()
                .frame(height: 2)
                .foregroundColor(.primary)
        }
        .padding(.vertical)
        .padding(.leading)
        .padding(.trailing)
    }
}

#Preview {
    DividerWithText()
}
