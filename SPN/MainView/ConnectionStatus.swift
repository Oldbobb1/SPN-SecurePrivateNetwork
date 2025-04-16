import SwiftUI

struct ConnectionStatus: View {
    @Binding var isConnected: Bool
    @Binding var currentRegion: String
    var body: some View {
        ResponsiveContainer {
            ContentConnectionStatusViews(
                isConnected: $isConnected,
                currentRegion: $currentRegion
            )
        }
    }
}

#Preview {
    ConnectionStatus(
        isConnected: .constant(true),
        currentRegion: .constant("USA")
    )
}
