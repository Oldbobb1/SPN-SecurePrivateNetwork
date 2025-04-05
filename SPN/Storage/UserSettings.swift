import SwiftUI

class UserSettings: ObservableObject {
    @AppStorage("selectedCountry")  var selectedCountry: String = ""
}
