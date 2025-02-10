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
//            Image("backgroundImage")
//                .resizable()
//                .scaledToFill()
                .ignoresSafeArea(.all)
            VStack {
                HStack(spacing: 40) {
                    Button(action: {
                        toggleConnection()
                    }) {
                        Image(systemName: "power.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(isConnected ? .green : .black)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 4)
                                    .fill(Color.blue)
                                    .shadow(
                                        color: Color.blue.opacity(0.5),
                                        radius: 6, x: 2,
                                        y: 2
                                    )
                                    .shadow(
                                        color: Color(UIColor.systemGray3),
                                        radius: 3, x: -2, y: -2)
                            )
                    }
                    Button(action: {
                        regions.toggle()
                    }) {
                        Image(systemName: "globe")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(Color.black)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 4)
                                    .fill(Color.blue)
                                    .shadow(
                                        color: Color.blue.opacity(0.5),
                                        radius: 6, x: 2,
                                        y: 2
                                    )
                                    .shadow(
                                        color: Color(UIColor.systemGray3),
                                        radius: 3, x: -2, y: -2)
                            )
                            .sheet(isPresented: $regions) {
                                RegionsView(
                                    currentRegion: $currentRegion,
                                    isConnected: $isConnected
                                )
                                .presentationDetents([.fraction(0.5)])
                            }
                    }
                }
                .padding(.bottom, 20)
                
                HStack(spacing: 40) {
                        Button(action: {
                            withAnimation {
                                self.showDetail = true
                            }
                        }) {
                        Image(systemName: "text.bubble.fill")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(Color.blue)
                                .padding()
                            
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.black, lineWidth: 4)
//                                        .fill(Color.blue)
                                        .shadow(
                                            color: Color.blue.opacity(0.5),
                                            radius: 6, x: 2,
                                            y: 2
                                        )
                                        .shadow(
                                            color: Color(UIColor.systemGray3),
                                            radius: 3, x: -2, y: -2)
                                )
                                .sheet(isPresented: $showDetail) {
                                    ShowDetailView(isConnected: $isConnected, currentRegion: $currentRegion)
                                        .presentationDetents([.fraction(0.5)])
                                }

                        }

                    Button(action: {
                        withAnimation {
                            self.subscription = true
                        }
                    }) {
                        Image(systemName: "dollarsign.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(.blue)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 4)
//                                    .fill(Color.blue)
                                    .shadow(
                                        color: Color.blue.opacity(0.5),
                                        radius: 6, x: 2,
                                        y: 2
                                    )
                                    .shadow(
                                        color: Color(UIColor.systemGray3),
                                        radius: 3, x: -2, y: -2)
                            )
                            .sheet(isPresented: $subscription) {
                                SubscriptionView()
                                    .presentationDetents([.fraction(0.5)])
                            }
                    }
                }
                .animation(.easeInOut, value: showDetail)
                .padding()
            }
            if isLoad {
                Color.white.opacity(0.6)
                    .ignoresSafeArea(.all)
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .scaleEffect(3.0)
                    .foregroundStyle(.green)
            }
        }
    }
    private func toggleConnection() {
        isLoad = true

        if isConnected {
            VPNManager.shared.disconnect()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isConnected = false
                isLoad = false
            }
        } else {
            VPNManager.shared.setupIKEv2VPN()

            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                VPNManager.shared.connectVPN()
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isConnected = true
                    isLoad = false
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
