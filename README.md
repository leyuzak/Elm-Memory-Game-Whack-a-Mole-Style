# Elm Memory Game (Whack-a-Mole Style)

## 📌 Summary

**Elm Memory Game** is a browser-based memory and reaction game inspired by the classic *Whack-a-Mole*. Built entirely with **Elm 0.19.1**, the project demonstrates how to create an interactive, time-based game using functional programming principles and the Elm Architecture.

Players improve their reaction speed and focus by clicking the highlighted tile in a dynamic grid before it changes.

---

## 📝 Description

This project is a simple yet complete game implemented with Elm as a learning and practice exercise. The game displays a **3x3 grid of tiles**, where exactly one tile is randomly highlighted at any given moment. The highlighted tile changes over time, requiring the player to stay attentive and react quickly.

The application strictly follows the **Elm Architecture (Model, Update, View)**:

* **Model** holds the game state such as the current score and active tile
* **Update** processes user interactions and time-based events
* **View** renders the UI declaratively based on the current state

Random tile selection is handled using `elm/random`, while continuous updates are managed through `elm/time`. This ensures all side effects are controlled, predictable, and easy to reason about.

Although the game mechanics are simple, the project highlights important frontend concepts such as state management, immutability, and declarative UI updates.

---

## 🎮 Gameplay

* The game displays a 3x3 grid of tiles
* One tile is randomly highlighted
* The player clicks the highlighted tile to gain points
* Each correct click increases the score
* The game runs continuously without a fixed end

---

## 🧠 Motivation

The motivation behind this project was to gain hands-on experience with Elm while building a fully working interactive application. It focuses on:

* Understanding the Elm Architecture in practice
* Working with time subscriptions and periodic updates
* Implementing randomness without mutable state
* Building a small game loop in a functional way

This repository can serve as a reference project for beginners who want to learn Elm through practical examples.

---

## 🛠️ Tech Stack

* **Elm** 0.19.1
* **elm/browser** – Browser integration
* **elm/html** – Declarative UI rendering
* **elm/random** – Random tile generation
* **elm/time** – Time-based updates
* **HTML** – Application bootstrapping

---

## 📁 Project Structure

```
elm-memory-game/
│
├── src/                # Elm source files
├── elm-stuff/          # Elm build artifacts
├── index.html          # Entry HTML file
├── main.js             # Compiled Elm output
├── elm.json            # Elm project configuration
└── README.md
```

---

## 🚀 Getting Started

### 1. Install Elm

Make sure you have Elm installed on your system:

```bash
npm install -g elm
```

### 2. Compile the Project

From the root directory of the project, run:

```bash
elm make src/Main.elm --output=main.js
```

### 3. Run the Game

Open `index.html` in your browser to start playing the game.

> 💡 Tip: For best results, serve the project using a local web server (for example, `npx serve`).

---

## 🌱 Future Improvements

Possible extensions and improvements include:

* Difficulty levels (faster tile switching)
* Sound effects and animations
* High score persistence
* Mobile and touch support
* Visual feedback for incorrect clicks

---

## 📄 License

This project is open source and licensed under the **MIT License**.

---

Made with using Elm
