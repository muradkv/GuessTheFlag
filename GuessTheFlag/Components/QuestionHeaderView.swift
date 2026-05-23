//
//  QuestionHeaderView.swift
//  GuessTheFlag
//
//  Created by murad on 23.05.2026.
//

import SwiftUI

struct QuestionHeaderView: View {
    let country: String 
    
    var body: some View {
        VStack {
            Text("Tap the flag of")
                .foregroundStyle(.secondary)
                .font(.subheadline.weight(.heavy))
            
            Text(country)
                .font(.largeTitle.weight(.semibold))
        }
    }
}

#Preview {
    QuestionHeaderView(country: Country.nameMock)
}
