//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by murad on 14.05.2026.
//

import SwiftUI

struct ContentView: View {
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
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(viewModel.countries[viewModel.correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            withAnimation {
                                viewModel.selectedFlag = number
                            }
                            
                            viewModel.flagTapped(number)
                        } label: {
                            FlagImage(countryName: viewModel.countries[number])
                                .rotation3DEffect(
                                    .degrees(viewModel.selectedFlag == number ? 360 : 0 ),
                                    axis: (x: 0, y: 1, z: 0)
                                )
                                .opacity(
                                    viewModel.selectedFlag == number || viewModel.selectedFlag == -1 ? 1.0 : 0.25
                                )
                                .scaleEffect(
                                    viewModel.selectedFlag == number || viewModel.selectedFlag == -1 ? 1.0 : 0.8
                                )
                        }
                    }
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
    ContentView()
}
