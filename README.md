# 🎯 Darts Scorer

A fully functional Android darts scoring application originally developed in **2015**.

The application was built as an early-stage software development project and represents my experience at that time with Android development, Java, SQLite, application state, user interfaces, data persistence and implementing domain-specific rules.

> **📌 Project note:** This is a historical project from 2015 and is preserved as a record of an earlier stage of my software development. The code reflects the architecture, tools and development practices I was using at the time and is not intended to represent my current coding standards.

## 🎯 Features

* ⏱️ Optional timer mode - play against the clock
* 🎯 Darts scoring and checkout validation
* 👥 Player management
* 🤖 CPU opponent
* 📊 Player and match statistics
* 💾 Persistent data using SQLite
* 🔄 Resume saved games
* 🏆 Match and leg tracking
* 📈 Scoring statistics including 60+, 100+, 140+ and 180 scores
* 🎮 Configurable game settings
* 🔊 In-game sound effects
* 📱 Android UI with multiple screens and layouts

## 📱 Screenshots

The screenshots below are from the original application and were recovered from the Google Play Store listing.

They are included to give an idea of the application's interface and functionality as it appeared when the application was originally published.

### 🎯 Score Input

### 📊 Player Statistics

### 📈 Scoring Statistics

### 🏆 Match / Game Screen

## 🧠 What the Project Demonstrates

Although this is an older project, it involved considerably more than simply creating an Android interface.

The application required the design and implementation of:

* Game and match state
* Darts scoring and checkout rules
* Player and match data
* Persistent storage
* Statistics and derived calculations
* User input and validation
* Saved and resumable game state
* Multiple application workflows
* Configurable settings
* CPU gameplay behaviour

The project therefore provides an early example of taking a real-world process and translating its rules and workflows into working software.

## 💾 Data & Persistence

The application uses **SQLite** for persistent player and statistics data.

The database stores information required to maintain player records and track statistics across games rather than relying solely on temporary application state.

## 📊 Statistics

The application records and displays various player and match statistics, including scoring milestones such as:

* 60+
* 100+
* 140+
* 180

Statistics are calculated from game data and presented through dedicated statistics screens.

## 🏗️ Technical Implementation

The original application was developed using:

* **Java**
* **Android SDK**
* **SQLite**
* Android Activities and layouts
* Android preferences/state management
* Android media and sound functionality

The application contains separate areas for gameplay, player management, game setup, statistics and instructions.

## 🔄 Saved Games

One of the application's features is the ability to resume a game after leaving the gameplay screen.

This required the application to retain relevant game state and restore it when the user returned to the game.

## 🤖 CPU Opponent

The application includes a CPU opponent, allowing a player to play a game without another human player.

This required the application to handle automated gameplay alongside the normal player scoring workflow.

## 📚 Development Context

This project was developed in **2015** and represents an **early stage of my software development**.

It is intentionally preserved in its original form rather than being substantially rewritten to reflect modern Android architecture.

The code is therefore not presented as an example of current best practice. In particular, the application has a relatively tightly coupled, Activity-centric architecture compared with how I would structure a new application today.

That said, the project demonstrates an important stage in my development as a programmer: designing and implementing a complete application involving user workflows, business rules, persistent data, application state and reporting.

## 🚀 Looking Back

If I were developing the application today, I would approach the architecture differently, with greater separation between:

**User Interface**
↓
**Application / Business Logic**
↓
**Data / Persistence**

The game rules, statistics and data access would be separated from the Android UI, making the application easier to test, maintain and extend.

This project is therefore useful both as a working application and as a record of how my approach to software development has evolved.


## 📌 Project Status

**Historical / Archived**

This project is no longer under active development and is maintained on GitHub primarily as a portfolio and reference project.

The repository preserves the original application as an example of an earlier stage of my software development.

**2015 — Android / Java / SQLite**
