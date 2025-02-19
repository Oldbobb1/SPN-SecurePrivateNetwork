import SwiftUI

struct ButtonCloseRegistrView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Button(action: {
                dismiss()
            }) {
                Image(systemName: "x.circle")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundStyle(Color(UIColor.label))
            }
            .padding(.leading, 20)
        }
    }
}
