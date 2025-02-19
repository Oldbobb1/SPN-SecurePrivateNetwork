import SwiftUI

struct RegionsView: View {
    @State private var search = ""
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    var body: some View {
        GeometryReader { geomentry in
            VStack {
                Spacer()
                RegionsContent(
                    search: $search,
                    currentRegion: $currentRegion,
                    isConnected: $isConnected
                )
                .frame(
                    maxWidth: geomentry.size.width * 0.95,
                    maxHeight: geomentry.size.height * 0.5
                )
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    RegionsView(
        currentRegion: .constant("usa"),
        isConnected: .constant(true)
    )
}


