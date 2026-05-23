# Guess the Flag

![Swift](https://img.shields.io/badge/Swift-5.0+-FA7343?logo=swift&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-18.0+-000000?logo=apple&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-15.0+-147EFB?logo=xcode&logoColor=white)
![Framework](https://img.shields.io/badge/Framework-SwiftUI-007AFF)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-8A2BE2)

An interactive iOS trivia game built natively with SwiftUI, developed as **Project 2** of the 100 Days of SwiftUI course, and subsequently refactored to production-level standards.

Players are challenged to test their geographical knowledge by matching the correct flag to the displayed country name. The game features a dynamic score tracking system, beautiful fluid animations, and a polished, modular user interface.

## Preview
<img width="25%" alt="start" src="https://github.com/user-attachments/assets/2a5e8d08-c52e-44a3-bc4f-36f92d5093a0" />
<img width="25%" alt="alert" src="https://github.com/user-attachments/assets/ec7f24ef-449b-4068-a73e-b954e9ce42d8" />

## Features

* **Interactive Gameplay:** Three randomly selected flags per round with configurable game limits (e.g., 3 questions per session).
* **Fluid Animations:** Smooth 3D rotation, scaling, and opacity transitions that react immediately to user selection.
* **Score Tracking:** Continuous score updates (+1 for correct, –1 for wrong) with contextual alerts after each round and a final game summary.
* **Engaging UI:** Beautiful radial gradient backgrounds, semi-transparent material cards, and clean typography with native safe-area handling.
* **Restart Mechanics:** Seamlessly reset the score and question count at the end of the game to play again.

## About the Project & Challenge

This application was initially built to fulfill **Project 2 (Days 20-22)** of the SwiftUI learning path created by Paul Hudson (Hacking with Swift). 

Beyond the core tutorial, the codebase underwent a major architectural refactoring to master modern iOS application design and clean code principles. Key concepts practiced and implemented include:

* **MVVM Architecture:** Completely decoupled business logic from the UI using `ObservableObject`.
* **Dependency Injection & Mocking:** Extracted a dedicated `Country` model and implemented DI in the ViewModel's initializer. This eliminated hardcoded datasets and enabled robust, crash-free SwiftUI Previews using static mock data.
* **View Composition:** Broke down a massive `ContentView` into highly reusable, "dumb" components (`FlagButtonView`, `QuestionHeaderView`, `FlagImage`) that communicate via closures, adhering to the Single Responsibility Principle (SRP).
* **Implicit Declarative Animations:** Transitioned from imperative `withAnimation` blocks to declarative `.animation(.default, value:)` modifiers, allowing SwiftUI to smoothly interpolate state changes.
* **State Encapsulation & Safety:** Applied strict access modifiers (`private(set)`) and eliminated "magic numbers" to create a safe, unidirectional data flow.

🔗 **[Full project description here](https://www.hackingwithswift.com/100/swiftui/20)**
