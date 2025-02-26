import SwiftUI
import Combine

struct InputNameField: View {
    @StateObject private var saveModel = UserSettings()
    private let maxStroke = 8
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter Name")
                .bold()
                .font(.title2)
                .padding(.leading, 20)
                .padding(.bottom, -10)
                .padding(.top, 30)
            CustomTextField(
                search: $saveModel.name, placeholder: "Name", field: TextField.init
            )
            .padding(.bottom, 20)
            .onReceive(Just(saveModel.name)) { newValue in
                if newValue.count > maxStroke {
                    saveModel.name = String(newValue.prefix(maxStroke))
                }
            }
        }
    }
}
