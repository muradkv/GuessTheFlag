//
//  GuessTheGla§§§.swift
//  GuessTheFlag
//
//  Created by murad on 22.05.2026.
//

import Foundation

final class GuessTheFlagViewModel: ObservableObject {
    @Published var showingScore = false
    @Published private(set) var scoreTitle = ""
    @Published private(set) var score = 0
    @Published private(set) var questionCount = 0
    @Published var showingFinal = false
    @Published private(set) var selectedFlag = -1
    
    let numberOfFlags = 3
    let totalQuestions = 3
    
    @Published private(set) var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US"].shuffled()
    @Published private(set) var correctAnswer = Int.random(in: 0...2)
    
    func flagTapped(_ number: Int) {
        selectedFlag = number
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
            score -= 1
        }
                
        questionCount += 1
        
        if questionCount == totalQuestions {
            showingFinal = true
        } else {
            showingScore = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0..<numberOfFlags)
        selectedFlag = -1
    }
    
    func restartQuestion() {
        askQuestion()
        questionCount = 0
        score = 0
    }
}
