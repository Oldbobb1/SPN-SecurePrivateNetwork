//
//  TermsAndPrivacyFiles.swift
//  SPN
//
//  Created by Bobbi R. on 6.04.25.
//
import SwiftUI

struct TermsAndPrivacyFiles: View {
    var body: some View {
        HStack {
            Link("Privacy Policy", destination: URL(string: "https://yourwebsite.com/privacy-policy")!)
            
            Text("and")
                .font(.system(size: 20))
                .foregroundStyle(.white)
            
            Link("Terms of Use", destination: URL(string: "https://yourwebsite.com/terms-of-use")!)
        }
        .padding(.bottom, 20)
        .foregroundStyle(.primary)
        .font(.system(size: 20))
    }
}
