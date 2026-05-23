//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by murad on 14.05.2026.
//

import SwiftUI

struct GuessTheFlagView: View {
    @StateObject private var viewModel = GuessTheFlagViewModel()
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                Spacer()
                
                VStack(spacing: 15) {
                    QuestionHeaderView(country: viewModel.countries[viewModel.correctAnswer])
                    
                    ForEach(0..<viewModel.numberOfFlags, id: \.self) { number in
                        FlagButtonView(
                            countryName: viewModel.countries[number],
                            isSelected: viewModel.selectedFlag == number,
                            isDefaultState: viewModel.selectedFlag == nil,
                            action: { viewModel.flagTapped(number) }
                        )
                    }
                    .animation(.default, value: viewModel.selectedFlag)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(viewModel.score)")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                
                Spacer()
            }
            .padding()
        }
        .alert(viewModel.scoreTitle, isPresented: $viewModel.showingScore) {
            Button("Continue", action: viewModel.askQuestion)
        } message: {
            Text("Your score is \(viewModel.score)")
        }
        .alert(viewModel.scoreTitle, isPresented: $viewModel.showingFinal) {
            Button("Restart", action: viewModel.restartQuestion)
        } message: {
            Text("Your final score is \(viewModel.score)")
        }
    }
}

#Preview {
    GuessTheFlagView()
}
