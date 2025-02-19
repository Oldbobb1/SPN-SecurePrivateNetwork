import SwiftUI

struct InputPasswordField: View {
    @StateObject private var saveModel = SavePropertyModel()
    @State private var isSecure = true
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Password")
                .bold()
                .font(.title2)
                .padding(.bottom, -10)
                .padding(.leading, 20)
            HStack {
                ZStack {
                    if isSecure {
                        SearchTextField(
                            search: $saveModel.password, placeholder: "enter password",
                            field: SecureField.init)
                    } else {
                        SearchTextField(
                            search: $saveModel.password, placeholder: "enter password",
                            field: TextField.init)
                    }
                }
                Button(action: {
                    isSecure.toggle()
                }) {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                }
                .padding(.trailing, 20)
            }
        }
    }
}
