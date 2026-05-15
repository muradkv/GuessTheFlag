//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by murad on 15.05.2026.
//

import SwiftUI

struct FlagImage: View {
    var countryName: String
    
    var body: some View {
        Image(countryName)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}
