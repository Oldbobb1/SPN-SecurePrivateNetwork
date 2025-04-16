import SwiftUI

struct Regions: View {
    @State private var search = ""
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    var body: some View {
        ResponsiveContainer {
            RegionsView(
                search: $search,
                currentRegion: $currentRegion,
                isConnected: $isConnected
            )
        }
    }
}

#Preview {
    Regions(
        currentRegion: .constant("usa"),
        isConnected: .constant(true)
    )
}
