import SwiftUI

struct InputEmailField: View {
    @StateObject private var saveModel = UserSettings()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Email")
                .bold()
                .font(.title2)
                .padding(.leading, 20)
                .padding(.bottom, -10)
            CustomTextField(
                search: $saveModel.email, placeholder: "Email", field: TextField.init
            )
            .padding(.bottom, 20)

        }
    }
}
