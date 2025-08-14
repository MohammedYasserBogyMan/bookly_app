# 📚 Bookly - Digital Book Discovery App

> _Discover, explore, and read your next favorite book with elegance and ease_

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)

![Bookly App Banner](assets/BOOKLY.png)

---

## 📋 Table of Contents

- [🌟 Overview](#-overview)
- [✨ Features](#-features)
- [🎥 Demo & Screenshots](#-demo--screenshots)
- [🚀 Installation](#-installation)
- [💻 Usage](#-usage)
- [🏗️ Architecture & Technical Details](#️-architecture--technical-details)
- [📖 Documentation](#-documentation)

---

## 🌟 Overview

**Bookly** is a modern, cross-platform mobile application built with Flutter that transforms the way users discover and explore books. Leveraging the power of the Google Books API, Bookly provides an elegant and intuitive interface for book enthusiasts to find their next favorite read.

### Why Bookly?

- **🎯 Problem Solved**: Traditional book discovery apps often lack modern UI/UX design and comprehensive book information
- **👥 Target Audience**: Book lovers, students, researchers, and casual readers looking for a beautiful book discovery experience
- **🌍 Context**: Personal project showcasing clean architecture principles and modern Flutter development practices

### Key Benefits

- ✅ **Elegant Design**: Dark-themed, minimalist interface focusing on content
- ✅ **Cross-Platform**: Native performance on iOS, Android, Web, Windows, macOS, and Linux
- ✅ **Fast & Responsive**: Optimized performance with efficient state management
- ✅ **Comprehensive Data**: Rich book information powered by Google Books API
- ✅ **Clean Architecture**: Maintainable and scalable codebase structure

---

## ✨ Features

### 🔥 Current Features

- **📖 Featured Books**: Discover trending and popular books curated from the best selections
- **🏆 Best Sellers**: Browse free eBooks and popular titles
- **🔍 Smart Search**: Advanced search functionality to find books by title, author, or keywords
- **📚 Book Details**: Comprehensive book information including:
  - Cover images and thumbnails
  - Author information
  - Descriptions and summaries
  - Ratings and reviews
  - Publication details
  - Availability and pricing
- **🎨 Similar Recommendations**: Find books similar to your interests based on categories
- **📱 Responsive Design**: Optimized for various screen sizes and orientations
- **🌙 Dark Theme**: Eye-friendly dark mode interface
- **⚡ Offline Caching**: Cached images for improved performance

### 🗺️ Roadmap (Planned Features)

- 📖 **Reading Progress Tracking**: Keep track of your reading progress
- 💾 **Favorites & Bookmarks**: Save books for later reading
- 🔔 **Notifications**: Get notified about new releases from favorite authors
- 👥 **Social Features**: Share book recommendations with friends
- 🎧 **Audiobook Support**: Integration with audiobook services
- 📊 **Reading Statistics**: Personal reading analytics and insights
- 🌐 **Multi-language Support**: Localization for different languages

---

## 🎥 Demo & Screenshots

### 📱 App Screenshots



---

## 🚀 Installation

### Prerequisites

Before setting up Bookly, ensure you have the following installed:

- **Flutter SDK** (>=3.5.0): [Install Flutter](https://docs.flutter.dev/get-started/install)
- **Dart SDK** (Included with Flutter)
- **IDE**: [VS Code](https://code.visualstudio.com/) with Flutter extension or [Android Studio](https://developer.android.com/studio)
- **Git**: [Install Git](https://git-scm.com/downloads)

**Platform-specific requirements:**

- **Android**: Android Studio, Android SDK (API level 21+)
- **iOS**: Xcode 12.0+ (macOS required)
- **Web**: Chrome browser for testing
- **Desktop**: Platform-specific requirements as per [Flutter documentation](https://docs.flutter.dev/development/platform-integration/desktop)

### Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/bookly_app.git
   cd bookly_app
   ```

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Verify Flutter Installation**

   ```bash
   flutter doctor
   ```

   Ensure all checkmarks are green for your target platforms.

4. **Run the Application**

   **For Mobile Development:**

   ```bash
   # Connect your device or start an emulator
   flutter devices
   flutter run
   ```

   **For Web Development:**

   ```bash
   flutter run -d chrome
   ```

   **For Desktop Development:**

   ```bash
   # Windows
   flutter run -d windows

   # macOS
   flutter run -d macos

   # Linux
   flutter run -d linux
   ```

5. **Build for Production**

   ```bash
   # Android APK
   flutter build apk --release

   # iOS (requires macOS)
   flutter build ios --release

   # Web
   flutter build web --release

   # Desktop
   flutter build windows --release  # Windows
   flutter build macos --release    # macOS
   flutter build linux --release    # Linux
   ```

---

## 💻 Usage

### Basic Usage

1. **Launch the App**: Open Bookly on your preferred platform
2. **Browse Featured Books**: Scroll through the home page to discover trending books
3. **Search for Books**: Use the search feature to find specific titles or authors
4. **View Book Details**: Tap on any book to see detailed information
5. **Explore Similar Books**: Discover related books based on your interests

### Configuration

The app uses several configurable constants located in `lib/const.dart`:

```dart
// Primary theme color
const kPraimaryColor = Color(0xff100B20);

// Animation duration
const kTranstionDuration = Duration(milliseconds: 250);

// Custom font family
const kFont = 'GT';
```

### API Configuration

Bookly uses the Google Books API. The base URL is configured in `lib/core/utils/api_service.dart`:

```dart
final _baseUrl = 'https://www.googleapis.com/books/v1/';
```

No API key is required for basic functionality, but consider adding one for production use to avoid rate limiting.

---

## 🏗️ Architecture & Technical Details

### Technology Stack

| Category                   | Technology          | Purpose                         |
| -------------------------- | ------------------- | ------------------------------- |
| **Framework**              | Flutter             | Cross-platform UI framework     |
| **Language**               | Dart                | Programming language            |
| **State Management**       | BLoC (flutter_bloc) | Predictable state management    |
| **Architecture**           | Clean Architecture  | Separation of concerns          |
| **Networking**             | Dio                 | HTTP client for API calls       |
| **Functional Programming** | Dartz               | Error handling with Either type |
| **Dependency Injection**   | GetIt               | Service locator pattern         |
| **Routing**                | GoRouter            | Declarative routing             |
| **Caching**                | CachedNetworkImage  | Image caching and optimization  |
| **Fonts**                  | Google Fonts        | Typography management           |

### Project Structure

```
lib/
├── core/                          # Core utilities and shared components
│   ├── errors/
│   │   └── failure.dart          # Error handling abstractions
│   ├── utils/
│   │   ├── api_service.dart      # HTTP client service
│   │   ├── app_router.dart       # Navigation configuration
│   │   ├── assets.dart           # Asset management
│   │   ├── service_locator.dart  # Dependency injection
│   │   └── styles.dart           # Theme and styling
│   └── widgets/                  # Reusable UI components
│       ├── custom_button.dart
│       └── custom_error.dart
├── Features/                     # Feature-based modular architecture
│   ├── home/                     # Home feature module
│   │   ├── data/
│   │   │   ├── models/           # Data models
│   │   │   └── repos/            # Repository implementations
│   │   └── presentation/
│   │       ├── view/             # UI screens and widgets
│   │       └── view_model/       # BLoC state management
│   ├── search/                   # Search feature module
│   │   ├── data/
│   │   └── presentation/
│   └── splash/                   # Splash screen module
├── const.dart                    # App-wide constants
└── main.dart                     # App entry point
```

### State Management

Bookly implements the **BLoC (Business Logic Component)** pattern for state management:

- **Cubits**: Simplified version of BLoC for straightforward state changes
- **States**: Immutable state classes representing different UI states
- **Events**: User interactions and external events (in full BLoC implementation)

**Key Cubits:**

- `FeaturedBooksCubit`: Manages featured books state
- `NewsedBooksCubit`: Handles newest/best seller books
- `SimilarBooksCubit`: Manages similar book recommendations

### Dependencies

**Core Dependencies:**

```yaml
dependencies:
  flutter: sdk
  flutter_bloc: ^8.1.6 # State management
  dio: ^5.7.0 # HTTP client
  dartz: ^0.10.1 # Functional programming
  get_it: ^8.0.2 # Dependency injection
  go_router: ^14.4.1 # Routing
  cached_network_image: ^3.4.1 # Image caching
  google_fonts: ^6.2.1 # Typography
  equatable: ^2.0.5 # Value equality
  font_awesome_flutter: ^10.7.0 # Icons
  easy_url_launcher: ^0.0.7 # URL launching
```

---

## 📖 Documentation

### API Documentation

- **Google Books API**: [Official Documentation](https://developers.google.com/books/docs/v1/using)
- **Flutter Documentation**: [Flutter Docs](https://docs.flutter.dev/)
- **BLoC Pattern**: [BLoC Library Documentation](https://bloclibrary.dev/)

### Additional Resources

- **Flutter Cookbook**: [Useful Flutter Samples](https://docs.flutter.dev/cookbook)
- **Dart Language Tour**: [Learn Dart](https://dart.dev/guides/language/language-tour)
- **Clean Architecture**: [Architecture Guidelines](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

### Code Documentation

Inline documentation is available throughout the codebase. For specific implementation details, refer to the source code comments.

---

### Development Tools & Environment

- **💻 IDE**: Visual Studio Code with Flutter extension
- **🎨 Design**: Figma for UI/UX design
- **📱 Testing**: Android Studio emulators and physical devices
- **🚀 CI/CD**: GitHub Actions for automated testing and deployment
- **📦 Package Management**: Pub.dev for Flutter packages

### Third-Party Libraries & Resources

- **📚 Google Books API**: Comprehensive book data and metadata
- **🎨 Font Awesome**: Beautiful icons throughout the app
- **🔤 Google Fonts**: Montserrat and GT Sectra Fine typography
- **🎯 BLoC Library**: Predictable state management solution
- **🌐 Dio HTTP Client**: Powerful networking capabilities
- **🖼️ Cached Network Image**: Efficient image loading and caching

### Inspiration & References

- **📖 Material Design**: Google's design principles for consistent UI
- **🎨 Flutter Gallery**: Reference for Flutter best practices
- **🏗️ Clean Architecture**: Robert C. Martin's architectural principles
- **📱 Dribbble**: UI/UX inspiration from the design community

<div align="center">

**Made with ❤️ by [BOGYMAN]**

_Happy Reading! 📚_

[![GitHub stars](https://img.shields.io/github/stars/yourusername/bookly_app?style=social)](https://github.com/yourusername/bookly_app/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/yourusername/bookly_app?style=social)](https://github.com/yourusername/bookly_app/network/members)
[![GitHub issues](https://img.shields.io/github/issues/yourusername/bookly_app)](https://github.com/yourusername/bookly_app/issues)

</div>
