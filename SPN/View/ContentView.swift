import SwiftUI

struct ContentView: View {
    @State private var isConnected = false
    @State private var isLoad = false
    //    @State private var currentIP = ""
    @State private var currentRegion = ""
    @State private var showDetail = false
    @State private var regions = false
    @State private var subscription = false
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
//                .preferredColorScheme(.dark)
            VStack {
                HStack(spacing: 40) {
                    ButtonImageView(action: {
                        toggleConnection()
                    },
                                systemName: "power.circle.fill",
                                style: isConnected ? .green : .red,
                                fillColor: Color(UIColor.systemGray6)
                                
                    )
                    ButtonImageView(action: {
                        regions.toggle()
                    },
                                systemName: "globe",
                                style: .blue,
                                fillColor: Color(UIColor.systemGray6)
                    )
                    .sheet(isPresented: $regions) {
                        RegionsView(
                            currentRegion: $currentRegion,
                            isConnected: $isConnected
                        )
                        .presentationDetents([.fraction(0.5)])
                    }
                }
                .padding(.bottom, 20)
                HStack(spacing: 40) {
                    ButtonImageView(action: {
                            self.showDetail = true
                    },
                                systemName: "info.circle.fill",
                                style: .yellow ,
                                fillColor: Color(UIColor.systemGray6)
                    )
                    .sheet(isPresented: $showDetail) {
                        ConnectionStatusView(
                            isConnected: $isConnected,
                            currentRegion: $currentRegion
                        )
                        .presentationDetents([.fraction(0.5)])
                    }
                    ButtonImageView(action: {
                            self.subscription = true
                    },
                                systemName: "person.circle.fill",
                                style:   .mint,
                                fillColor: Color(UIColor.systemGray6)
                    )
                    .sheet(isPresented: $subscription) {
                        SingInView()
                            .presentationDetents([.fraction(0.5)])
                    }
                }
                .animation(.easeInOut, value: showDetail)
                .padding()
            }
            LoadView(isLoad: $isLoad)
        }
    }
    private func toggleConnection() {
        let connect = Connect(
            isLoad: $isLoad,
            isConnected: $isConnected
        )
        connect.connect()
    }
}

#Preview {
    ContentView()
}
