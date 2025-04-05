//
//  SavePropertyModel.swift
//  SPN
//
//  Created by Bobbi R. on 24.02.25.
//


import SwiftUI

class UserSettings: ObservableObject {
    @AppStorage("selectedCountry")  var selectedCountry: String = ""
}
