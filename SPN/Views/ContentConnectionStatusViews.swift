import SwiftUI

struct ContentConnectionStatusViews: View {
    @Binding var isConnected: Bool
    @State private var currentIP = ""
    @Binding var currentRegion: String
    @StateObject private var saveModel = UserSettings()
    @StateObject private var frame = FrameModel()
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
            ConnectionDetailView(
                systemName: "network",
                title: "Status:",
                text: isConnected ? "Connected" : "Disconnected",
                textStyle: isConnected ? .green : .red
            )
            ConnectionDetailView(
                systemName: "wifi",
                title: "IP:",
                text: currentIP,
            )
            ConnectionDetailView(
                systemName: "globe",
                title: "Region:",
                text: currentRegion.isEmpty
                    ? saveModel.selectedCountry : currentRegion
            )
            Spacer()
        }
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.systemGray5))
                .stroke(.black, lineWidth: 4)
                .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: 2)
                .shadow(color: .gray.opacity(0.7), radius: 2, x: -1, y: -2)
        )
        .offset(y: frame.offset)
        .onAppear {
            withAnimation {
                frame.offset = 0
            }
        }
    }
}
