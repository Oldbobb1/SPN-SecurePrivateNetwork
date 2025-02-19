import SwiftUI

struct ContentConnectionStatus: View {
    @Binding var isConnected: Bool
    @State private var currentIP = ""
    @Binding var currentRegion: String
    @StateObject private var saveModel = SavePropertyModel()
    @StateObject private var frame = FrameModel()
    var body: some View {
        VStack(spacing: 15) {
            Spacer()
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
                text: currentRegion.isEmpty ? saveModel.selectedCountry : currentRegion,
                textStyle: .primary
            )
            Spacer()
        }
        .padding(.horizontal)
        .background(RoundedRectangle(cornerRadius: 25)
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


