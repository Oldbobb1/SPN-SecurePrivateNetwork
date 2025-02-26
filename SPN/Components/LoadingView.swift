//
//  LoadingView.swift
//  SPN
//
//  Created by Bobbi R. on 24.02.25.
//
import SwiftUI

struct LoadingView: View {
    @Binding var isLoad: Bool
    var body: some View {
        if isLoad {
            Color.white.opacity(0.6)
                .ignoresSafeArea(.all)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
                .scaleEffect(3.0)
        }
    }
}

