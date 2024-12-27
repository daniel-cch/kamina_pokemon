# kamina_pokemon

## Getting Started

Follow these instructions to set up and run the Flutter app on your local machine for Android and iOS.
Web is not supported given that the images from the API throws a CORS error

### Prerequisites
- Install [Flutter](https://flutter.dev/docs/get-started/install) on your system.
- Install Xcode (for iOS development) and Android Studio (for Android development).
- Ensure you have an emulator or physical device configured for testing.

### Setup Guide

#### Android
1. Open a terminal and navigate to the project directory.
2. Run `flutter pub get` to install dependencies.
3. Connect an Android device or start an Android emulator.
4. Run `flutter run` to build and launch the app.

#### iOS
1. Open a terminal and navigate to the project directory.
2. Run `flutter pub get` to install dependencies.
3. Open the `ios` directory in Xcode.
4. Run the app in Xcode using a simulator or a connected device.

---

## Architecture Overview

This app follows a simplified Clean Architecture pattern to ensure scalability, maintainability, and testability.

### File Structure
- **Features**: Contains feature-specific modules divided into `detail` and `home`. Each feature contains the following subdirectories:
    - **core**: Holds feature-specific utilities and constants.
    - **data**: Handles data-related operations, including models, repositories, and services.
    - **domain**: Manages business logic and entities, as well as abstract repository interfaces.
    - **presentation**: Contains UI components like pages, screens, views, widgets, and state management (Bloc).
    - **utils**: Provides feature-specific utility functions.

- **core**: Contains app-wide utilities such as routing, dependency injection, constants, and HTTP configurations.
- **design_system**: Houses reusable UI components to maintain consistent design throughout the app.
- **main.dart**: Entry point of the app.

### Key Principles
- **Separation of Concerns**: Each layer is responsible for a specific aspect of the app (UI, business logic, or data).
- **Dependency Injection**: Facilitates decoupling of components and easier testing.
- **Bloc State Management**: Ensures predictable and testable UI state transitions.

---

## Key Packages Used

### [auto_route](https://pub.dev/packages/auto_route)
Used for declarative and type-safe routing, simplifying navigation logic and maintaining a clean routing structure.

### [bloc](https://pub.dev/packages/bloc)
Provides predictable state management, separating UI from business logic while maintaining testability and scalability.

### [cached_network_image](https://pub.dev/packages/cached_network_image)
Enables efficient image loading with caching capabilities, improving performance and offline support.

### [dio](https://pub.dev/packages/dio)
A powerful and flexible HTTP client used for network requests, supporting features like interceptors, request cancellation, and retry policies.

### [equatable](https://pub.dev/packages/equatable)
Simplifies value comparison in Dart objects, reducing boilerplate and improving code readability in state and entity comparisons.

### [fpdart](https://pub.dev/packages/fpdart)
Provides functional programming utilities for handling errors and asynchronous data in a cleaner and more declarative way.

### [get_it](https://pub.dev/packages/get_it)
Implements a service locator pattern for managing dependency injection, reducing coupling and improving testability.

### [hive](https://pub.dev/packages/hive)
A lightweight and high-performance NoSQL database for local storage, used for caching and persisting data offline.



