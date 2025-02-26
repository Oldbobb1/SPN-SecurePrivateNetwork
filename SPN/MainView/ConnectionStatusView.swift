import SwiftUI

struct ConnectionStatusView: View {
    @Binding var isConnected: Bool
//    @State private var currentIP = "" из viewModel можно передать 
    @Binding var currentRegion: String
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                ContentConnectionStatus(isConnected: $isConnected, currentRegion: $currentRegion)
                    .frame(
                        maxWidth: geometry.size.width * 0.95,
                        maxHeight: geometry.size.height * 0.5
                    )
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ConnectionStatusView(
        isConnected: .constant(true),
        currentRegion: .constant("USA")
    )
}

