import SwiftUI

struct RegionsView: View {
    @State private var search = ""
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    @AppStorage("selectedCountry") private var selectedCountry: String?
    let countries = [
        Country(name: "USA", flagImage: "usa"),
        Country(name: "Germany",flagImage: "germany"),
        Country(name: "Poland", flagImage: "poland"),
        Country(name: "Spain", flagImage: "spain"),
    ]
    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
//                .preferredColorScheme(.dark)
            VStack {
                SearchTextField(search: $search)
                RegionsList(
                    contries: countries,
                    search: $search,
                    currentRegion: $currentRegion,
                    isConnected: $isConnected,
                    selectedCountry: $selectedCountry
                )
            }
        }
    }
}

#Preview {
    RegionsView(
        currentRegion: .constant("usa"),
        isConnected: .constant(true)
    )
}
