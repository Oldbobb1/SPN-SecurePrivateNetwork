import SwiftUI

struct RegistrView: View {
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                ButtonCloseRegistrView()
                InputNameField()
                InputEmailField()
                InputPasswordField()
                Spacer()
                ButtonCreateProfile()
            }
        }
    }
}

#Preview {
    RegistrView()
}
