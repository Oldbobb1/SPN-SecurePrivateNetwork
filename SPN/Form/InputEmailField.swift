import SwiftUI

struct InputEmailField: View {
    @StateObject private var saveModel = SavePropertyModel()
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Email")
                .bold()
                .font(.title2)
                .padding(.leading, 20)
                .padding(.bottom, -10)
            SearchTextField(
                search: $saveModel.email, placeholder: "Email", field: TextField.init
            )
            .padding(.bottom, 20)

        }
    }
}
