import SwiftUI

struct RegionsList: View {
    let contries: [Country]
    @Binding var search: String
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    @Binding var selectedCountry: String?
    var body: some View {
        VStack {
            List(filtered) { country in
                Button(action: {
                    selectedCountry = country.name
                    currentRegion = country.name
                    isConnected = false
                }) {
                    HStack {
                        ImageView(
                            nameImage: country.flagImage,
                            width: 40,
                            height: 40,
                            cornerRadius: nil,
                            maxWidth: nil,
                            alignment: .leading
                        )
                        Text(country.name)
                        Spacer()
                        if selectedCountry == country.name {
                            Image(systemName: "checkmark")
                                .foregroundStyle(Color.primary)
                        }
                    }
                }
                .listRowBackground(Color.clear)
            }
            .frame(maxHeight: UIScreen.main.bounds.height * 0.35)
            .listStyle(PlainListStyle())
            .environment(\.defaultMinListRowHeight, 70)
            .scrollIndicators(.hidden)
            .clipped()
        }
    }
    private var filtered: [Country] {
        if search.isEmpty {
            return contries
        } else {
            return contries.filter {
                $0.name.lowercased().contains(search.lowercased())
            }
        }
    }
}


