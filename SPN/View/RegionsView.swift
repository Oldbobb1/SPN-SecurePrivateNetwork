import SwiftUI

struct RegionsView: View {
    @State private var search = ""
    @Binding var currentRegion: String
    @Binding var isConnected: Bool
    @AppStorage("selectedCountry") private var selectedCountry: String?
    
    let counties = [
        Country(
            name: "USA",
            flagImage: "usa"
        ),
        Country(
            name: "Germany",
            flagImage: "germany"
        ),
        Country(
            name: "Poland",
            flagImage: "poland"
        ),
        Country(
            name: "Spain",
            flagImage: "spain"
        ),
    ]

    var body: some View {
        ZStack {
            Color(UIColor.systemGray5)
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    TextField(
                        "Search",
                        text: $search
                    )
                        .padding()
                        .keyboardType(.asciiCapable)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(
                                    Color.black,
                                    lineWidth: 3
                                )
                                .fill(Color(UIColor.systemGray6))
                                .shadow(
                                    color: Color(UIColor.systemGray3),
                                    radius: 6,
                                    x: 1,
                                    y: 1
                                )
                                .shadow(
                                    color: Color(UIColor.systemGray5),
                                    radius: 3,
                                    x: -1,
                                    y: -1
                                )
                        )
                        .padding(20)
                        .multilineTextAlignment(.leading)
                }
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
                .listStyle(PlainListStyle())
                .environment(\.defaultMinListRowHeight, 70)
                .scrollIndicators(.hidden)
               
            }
        }
    }
    private var filtered: [Country] {
        if search.isEmpty {
            return counties
        } else {
            return counties.filter {
                $0.name.lowercased().contains(search.lowercased())
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
