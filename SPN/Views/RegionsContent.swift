import SwiftUI

struct RegionsContent: View {
    @Binding var search: String
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    @AppStorage("selectedCountry") private var selectedCountry: String?
    @StateObject private var frame = FrameModel()
    let countries = [
        Country(name: "USA", flagImage: "usa"),
        Country(name: "Germany", flagImage: "germany"),
        Country(name: "Poland", flagImage: "poland"),
        Country(name: "Spain", flagImage: "spain"),
    ]
    var body: some View {
        VStack {
            CustomTextField(
                search: $search,
                placeholder: "Search",
                field: TextField.init
            )
            RegionsList(
                contries: countries,
                search: $search,
                currentRegion: $currentRegion,
                isConnected: $isConnected,
                selectedCountry: $selectedCountry
            )
        }
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
