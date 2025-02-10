import SwiftUI

struct ShowDetailView: View {
    @Binding var isConnected: Bool
    @State private var currentIP = ""
    @Binding var currentRegion: String
    
    @AppStorage("selectedCountry") private var selectedCountry: String = ""
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color.indigo, Color.teal]), startPoint: .top, endPoint: .bottom)
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
           
            VStack(spacing: 35) {
                HStack {
                    Image(systemName: "network")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(isConnected ? .green : .red)
                    Text("Status:")
                        .bold()
                        .font(.title)
                        .foregroundStyle(Color.primary)
                    Spacer()
                    Text(isConnected ? "Connected" : "Disconnected")
                        .font(.title2)
//                        .bold()
                        .foregroundStyle(isConnected ? .green : .red)
                        .padding(.trailing, 20)
                }
                .padding(.leading, 20)
                
                HStack {
                    Image(systemName: "wifi")
                        .resizable()
                        .frame(width: 35, height: 30)
                        .foregroundStyle(Color.primary)
                    Text("IP:")
                        .bold()
                        .font(.title)
                        .foregroundStyle(Color.primary)
                    Spacer()
                    Text(currentIP)
                        .font(.title2)
                        .padding(.trailing, 20)
                }
                .padding(.leading, 20)
                
                HStack {
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color.yellow)
                    Text("Region:")
                        .bold()
                        .font(.title)
                        .foregroundStyle(Color.primary)
                    Spacer()
                    Text(currentRegion.isEmpty ? selectedCountry : currentRegion)
//                        .bold()
                        .font(.title2)
                        .foregroundStyle(Color.primary)
                        .padding(.trailing, 20)
                }
                .padding(.leading, 20)
            }
            .padding()
        }
    }
}

#Preview() {
    ShowDetailView(isConnected: .constant(true), currentRegion: .constant("USA"))
}
