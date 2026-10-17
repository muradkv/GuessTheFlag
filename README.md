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
* **VoiceOver Accessibility:** Non-spoiler visual descriptions for every country flag and grouped header announcements so visually impaired players can enjoy the full game experience.
* **Score Tracking:** Continuous score updates (+1 for correct, –1 for wrong) with contextual alerts after each round and a final game summary.
* **Engaging UI:** Beautiful radial gradient backgrounds, semi-transparent material cards, and clean typography with native safe-area handling.
* **Restart Mechanics:** Seamlessly reset the score and question count at the end of the game to play again.

## About the Project & Challenge

This application was initially built to fulfill **Project 2 (Days 20-22)** of the SwiftUI learning path created by Paul Hudson (Hacking with Swift), and later expanded with cross-project challenges from **Project 3 (Day 24 — Views and Modifiers)**, **Project 6 (Day 34 — Animation)**, and **Project 15 (Day 75 — Accessibility)**. 

Beyond the core tutorial, the codebase underwent a major architectural refactoring to master modern iOS application design and clean code principles. Key concepts practiced and implemented include:

* **MVVM Architecture:** Completely decoupled business logic from the UI using `ObservableObject`.
* **Dependency Injection & Mocking:** Extracted a dedicated `Country` model and implemented DI in the ViewModel's initializer. This eliminated hardcoded datasets and enabled robust, crash-free SwiftUI Previews using static mock data.
* **View Composition:** Broke down a massive `ContentView` into highly reusable, "dumb" components (`FlagButtonView`, `QuestionHeaderView`, `FlagImage`) that communicate via closures, adhering to the Single Responsibility Principle (SRP).
* **Reusable View Extraction (Day 24 — Project 3 Challenge):** Replaced inline `Image` rendering and modifier chains with a dedicated `FlagImage` component encapsulating capsule clipping and shadow styling.
* **Interactive 3D & State Transitions (Day 34 — Project 6 Challenge):** Implemented a 360-degree Y-axis 3D rotation (`rotation3DEffect`) for the tapped flag while simultaneously dimming (`opacity(0.25)`) and scaling down (`scaleEffect`) unselected flags, later refined with declarative `.animation(.default, value:)` bindings.
* **State Encapsulation & Safety:** Applied strict access modifiers (`private(set)`) and eliminated "magic numbers" (`-1`) by migrating selection tracking to `Optional<Int>` (`Int?`) to maintain a safe, unidirectional data flow.
* **Accessibility Tree Optimization (Day 75 — Project 15 Challenge):** Replaced default asset filename readouts with descriptive `.accessibilityLabel` mappings inside `FlagImage` and unified multi-line question prompts using `.accessibilityElement(children: .combine)` in `QuestionHeaderView`.

🔗 **[Full project description here](https://www.hackingwithswift.com/100/swiftui/20)**
🔗 **[Views & Modifiers challenge (Day 24)](https://www.hackingwithswift.com/100/swiftui/24)**  
🔗 **[Animation challenge (Day 34)](https://www.hackingwithswift.com/100/swiftui/34)**  
🔗 **[Accessibility challenge (Day 75)](https://www.hackingwithswift.com/100/swiftui/75)**

## Project Versioning & Changelog

- **v2.1.0 (VoiceOver Accessibility Integration)** — commit: `b52bb8d`  
  Completed the Day 75 (Project 15) accessibility challenge. Added a static flag descriptions dictionary to the `Country` model, attached `.accessibilityLabel` to `FlagImage` to prevent VoiceOver from reading out country filenames, and combined child text elements in `QuestionHeaderView` for single-swipe screen reader navigation.
- **v2.0.0 (MVVM Architecture, DI & View Composition)** — commit: `ef17ba6`  
  Comprehensive production-grade refactoring. Migrated game state and logic to `GuessTheFlagViewModel`, introduced the `Country` model with Dependency Injection, extracted `FlagButtonView` and `QuestionHeaderView` subviews, replaced magic numbers with constants, and migrated selection state to `Optional<Int>`.
- **v1.1.0 (Custom FlagImage & 3D Animations)** — commit: `7e273f0`  
  Completed Project 3 (Day 24) and Project 6 (Day 34) challenges. Extracted capsule-styled `FlagImage` component and implemented interactive 3D Y-axis rotation, opacity dimming, and scale transitions upon flag selection.
- **v1.0.0 (Functional MVP Release)** — commit: `ef1ba65`  
  Initial core game implementation fulfilling Project 2 requirements and challenges, including score tracking, round limits, contextual alerts, and game restart functionality.
