import SwiftUI

struct ContentView: View {

    @State private var isConnected = false
    @State private var isLoad = false
    @State private var currentIP = ""
    @State private var currentRegion = ""
    @State private var showDetail = false
    @State private var fullScreen = false
    
    @AppStorage("selectedCountry") private var selectedCountry: String = ""
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
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
                                        color: Color.blue.opacity(0.2), radius: 3, x: 2,
                                        y: 2
                                    )
                                    .shadow(color: Color.blue, radius: 3, x: 2, y: 2)
                            )
                    }
                    Button(action: {
                        fullScreen.toggle()
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
                                        color: Color.blue.opacity(0.2), radius: 3, x: 2,
                                        y: 2
                                    )
                                    .shadow(color: Color.blue, radius: 3, x: 2, y: 2)
                            )
                            .sheet(isPresented: $fullScreen) {
                                Regions(currentRegion: $currentRegion, isConnected: $isConnected)
                            }
                    }
                }
                .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Read More")
                            .font(.headline)
                        Spacer()
                        
                        Button(action: {
                            withAnimation {
                                showDetail.toggle()
                            }
                        }) {
                            Image(systemName: "chevron.down.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                                .rotationEffect(.degrees(showDetail ? 180 : 0))
                        }
                    }
                    .padding()
                    .frame(height: 70)
                    .background(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black,lineWidth: 3)
                        .fill(Color(.systemGray6))
                        .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                        .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                    )
                    if showDetail {
                        VStack(alignment: .leading, spacing: 20) {
                            HStack {
                                Text("Status:")
                                    .bold()
                                Spacer()
                                Text(isConnected ? "Connected" : "Disconnected")
                                    .font(.headline)
                                    .foregroundStyle(isConnected ? .green : .primary)
                            }
                            HStack {
                                Text("IP:")
                                    .bold()
                                Spacer()
                                Text(currentIP)
                                    .font(.headline)
                            }
                            HStack {
                                Text("Region:")
                                    .bold()
                                Spacer()
                                Text(currentRegion.isEmpty ? selectedCountry : currentRegion)
                                    .font(.headline)
                            }
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black,lineWidth: 3)
                            .fill(Color(.systemGray6))
                            .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                            .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                        )
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

struct Country: Identifiable {
    var id = UUID()
    var name: String
    var flagImage: String
}


struct Regions: View {
    
    @State private var search = ""
    
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    
    let counties = [
        Country(name: "USA", flagImage: "usa"),
        Country(name: "Germany", flagImage: "germany"),
        Country(name: "Poland", flagImage: "poland"),
        Country(name: "Spain", flagImage: "spain")
    ]
    
    @AppStorage("selectedCountry") private var selectedCountry: String?
    
    var body: some View {
            ZStack {
                Color(UIColor.systemGray6)
                    .ignoresSafeArea(.all)
                VStack {
                    HStack{
                        TextField("Search", text: $search)
                            .padding(.all)
                            .keyboardType(.asciiCapable)
                            .background(RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black,lineWidth: 3)
                                .fill(Color(UIColor.systemGray6))
                                .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                                .shadow(color: Color.gray, radius: 3, x: 2,y: 2)
                            )
                            .padding(20)
                            .multilineTextAlignment(.leading)
                    }
                    List (filtered) { country in
                        Button(action:{
                            selectedCountry = country.name
                            currentRegion = country.name
                            isConnected = false
                        }) {
                            HStack {
                                Image(country.flagImage)
                                    .resizable()
                                    .frame(width: 40,height: 40,alignment: .leading)
                                Text(country.name)
                                
                                Spacer()
                                
                                if selectedCountry == country.name {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(Color.primary)
                                }
                            }
                        }
                    }
                }
            }
    }
    
    private var filtered: [Country] {
        if search.isEmpty {
            return counties
        } else {
            return counties.filter { $0.name.lowercased().contains(search.lowercased()) }
        }
    }
}
