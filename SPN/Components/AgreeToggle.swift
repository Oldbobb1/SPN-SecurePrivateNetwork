import SwiftUI

struct AgreeToggle: View {
    @Binding var show: Bool
    @Binding var showPrivacyPolicy: Bool
    var body: some View {
        Toggle(isOn: $show) {
            HStack {
                Text("I agree")
                    .font(.system(size: 22))
                    .padding(.leading)
            }
            .frame(height: 50)
            .font(.footnote)
        }
        .padding(.trailing)
        .background(RoundedRectangle(cornerRadius: 25)
            .fill(.clear)
            .stroke(.black, lineWidth: 4)
            .shadow(color: .black.opacity(0.5),
                    radius: 3,
                    x: 2,
                    y: 2
                   )
                .shadow(color: .gray.opacity(0.7),
                        radius: 3,
                        x: -1,
                        y: -2
                       )
                    
        )
        .onChange(of: show) { [show] in
            if show {
                withAnimation(.bouncy(duration: 3.5)) {
                    showPrivacyPolicy = false
                }
            }
        }
    }
}
