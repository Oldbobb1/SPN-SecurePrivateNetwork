import SwiftUI

struct ConnectionStatusView: View {
    @Binding var isConnected: Bool
    @State private var currentIP = ""
    @Binding var currentRegion: String
    @AppStorage("selectedCountry") private var selectedCountry: String = ""
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
//                .preferredColorScheme(.dark)
            VStack(spacing: 15) {
                ConnectionStatusOptionView(
                    systemName: "network",
                    width: 30,
                    height: 30,
                    style: isConnected ? .green : .red,
                    title: "Status:",
                    titleStyle: .primary,
                    text: isConnected ? "Connected" : "Disconnected",
                    textStyle: isConnected ? .green : .red
                )
                ConnectionStatusOptionView(
                    systemName: "wifi",
                    width: 35,
                    height: 35,
                    style: .primary,
                    title: "IP:",
                    titleStyle: .primary,
                    text: currentIP,
                    textStyle: .primary
                )
                ConnectionStatusOptionView(
                    systemName: "globe",
                    width: 30,
                    height: 30,
                    style: .yellow,
                    title: "Region:",
                    titleStyle: .primary,
                    text: currentRegion.isEmpty ? selectedCountry : currentRegion,
                    textStyle: .primary
                )
            }
            .padding()
        }
    }
}

#Preview() {
    ConnectionStatusView(
        isConnected: .constant(true),
        currentRegion: .constant("USA")
    )
}
