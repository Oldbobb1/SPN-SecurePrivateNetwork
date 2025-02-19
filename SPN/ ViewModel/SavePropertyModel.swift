import SwiftUI

class SavePropertyModel: ObservableObject {
    @AppStorage("name")  var name = ""
    @AppStorage("email")  var email = ""
    @AppStorage("password")  var password = ""
    @AppStorage("isRegistr")  var isRegistr: Bool = false
    @AppStorage("selectedCountry")  var selectedCountry: String = ""
}
