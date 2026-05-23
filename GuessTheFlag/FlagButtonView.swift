//
//  FlagButtonView.swift
//  GuessTheFlag
//
//  Created by murad on 23.05.2026.
//

import SwiftUI

struct FlagButtonView: View {
    let countryName: String
    let isSelected: Bool
    let isDefaultState: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            FlagImage(countryName: countryName)
                .rotation3DEffect(
                    .degrees(isSelected ? 360 : 0),
                    axis: (x: 0, y: 1, z: 0)
                )
                .opacity(isSelected || isDefaultState ? 1.0 : 0.25)
                .scaleEffect(isSelected || isDefaultState ? 1.0 : 0.8)
        }
    }
}

#Preview {
    VStack {
        FlagButtonView(countryName: "US", isSelected: false, isDefaultState: false) {
        }
        
        FlagButtonView(countryName: "US", isSelected: false, isDefaultState: true) {
        }
    }
}
