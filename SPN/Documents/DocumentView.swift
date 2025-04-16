import SwiftUI

struct DocumentView: View {
    let fileName: String
    @State private var text: String = ""
    @Environment(\.dismiss) var dissmis
    var body: some View {
        ScrollView {
            HStack {
                CustomButtons(
                    action: { dissmis() },
                    imageParametr: ImageButtonConfiguration(
                        systemName: "arrow.backward",
                        width: 20,
                        height: 20
                    )
                )
                .padding(.leading, 20)
                Spacer()
            }
            Text(text)
                .padding()
                .font(.body)
        }
        .onAppear {
            loadFile(named: fileName)
        }
    }
    func loadFile(named name: String) {
        if let url = Bundle.main.url(forResource: name, withExtension: "txt"),
            let content = try? String(contentsOf: url, encoding: .utf8)
        {
            self.text = content
        } else {
            self.text = "Failed"
        }
    }
}
