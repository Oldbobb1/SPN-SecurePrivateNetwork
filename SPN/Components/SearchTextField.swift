import SwiftUI

struct SearchTextField: View {
    @Binding var search: String
    var body: some View {
        HStack {
            TextField("Search", text: $search)
                .padding()
                .keyboardType( .asciiCapable)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.black, lineWidth: 5)
                        .fill(Color(UIColor.systemGray6))
                        .shadow(
                            color: .black.opacity(0.5),
                            radius: 3,
                            x: 2,
                            y: 2
                        )
                        .shadow(
                            color: Color(UIColor.systemGray3),
                            radius: 3,
                            x: -1,
                            y: -2
                        )
                )
                .padding(20)
                .multilineTextAlignment(.leading)
        }
    }
}
