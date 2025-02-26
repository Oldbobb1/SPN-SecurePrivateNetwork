//
//  SavePropertyModel.swift
//  SPN
//
//  Created by Bobbi R. on 24.02.25.
//


import SwiftUI

class UserSettings: ObservableObject {
    @AppStorage("name")  var name = ""
    @AppStorage("email")  var email = ""
    @AppStorage("password")  var password = ""
    @AppStorage("isRegistr")  var isRegistr: Bool = false
    @AppStorage("selectedCountry")  var selectedCountry: String = ""
}
