# Simple Typing Indicator

A lightweight Flutter widget that displays an animated typing indicator with three pulsing dots, perfect for chat applications.

## Features

- 🎯 Minimal, focused API
- 🎨 Customizable dot color, size, and spacing
- ⚡ Performance optimized
- 📱 Cross-platform support
- 🔧 Easy integration

## Getting started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  simple_typing_indicator:
```

## Usage

```dart
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

// Basic usage
const SimpleTypingIndicator()

// Customized usage
const SimpleTypingIndicator(
  dotColor: Colors.blue,
  dotSize: 10.0,
  spacing: 5.0,
  duration: Duration(milliseconds: 1000),
  speed: 1.0,
)
```

## Additional information

### Parameters

- `dotColor`: The color of the dots (default: `Colors.grey`)
- `dotSize`: Size of each dot (default: `8.0`)
- `spacing`: Space between dots (default: `4.0`)
- `duration`: Base animation duration (default: `1000ms`)
- `speed`: Animation speed multiplier (default: `1.0`)

### Platform Support

- Android
- iOS
- Web
- macOS
- Windows
- Linux

### Contributing

Feel free to file issues and PRs on the GitHub repository. Your contributions are welcome!

### License

MIT License - see the [LICENSE](LICENSE) file for details

---

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Platform Support](#platform-support)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Basic Example](#basic-example)
  - [Customization Options](#customization-options)
  - [Advanced Usage](#advanced-usage)
- [API Documentation](#api-documentation)
- [Demo](#demo)
- [Contributing](#contributing)
- [FAQ](#faq)
- [License](#license)
- [Additional Information](#additional-information)

---

## Overview

**Simple Typing Indicator** is a Flutter widget that displays three animated dots in a row, pulsing in a staggered fashion to simulate a typing indicator. This package is ideal for developers who want an easy, efficient solution to add a "typing..." animation to their apps without unnecessary bloat.

---

## Features

- **Minimal API:** Only the essential parameters are exposed.
- **Customization:** Adjust dot color, size, spacing, base animation duration, and animation speed.
- **Performance Optimized:** Designed to be lightweight for use in performance-sensitive applications.
- **Platform Support:** Works on Android, iOS, Web, and Flutter desktop (macOS, Windows, Linux).
- **Easy Integration:** Quickly drop the widget into your UI, even combining it with text for chat interfaces.

---

## Platform Support

The widget has been tested and supports the following platforms:

- **Android:** ✅
- **iOS:** ✅
- **Web:** ✅
- **Desktop:** Compatible with macOS, Windows, and Linux

---

## Getting Started

### Prerequisites

- **Flutter SDK:** Version 2.0 or later.
- **Dart SDK:** Version 2.12 or later (with null safety enabled).

### Installation

Add the dependency to your project's `pubspec.yaml` file. If you're testing locally, use a path override; once published, reference the package version.

```yaml
dependencies:
  flutter:
    sdk: flutter
  simple_typing_indicator:
    path: ../simple_typing_indicator  # Replace with the version once published, e.g., ^1.0.0
```

---

## Usage

### Basic Example

```dart
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

// Basic usage
const SimpleTypingIndicator()
```

### Customization Options

```dart
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

// Customized usage
const SimpleTypingIndicator(
  dotColor: Colors.blue,
  dotSize: 10.0,
  spacing: 5.0,
  duration: Duration(milliseconds: 1000),
  speed: 1.0,
)
```

### Advanced Usage

```dart
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

// Advanced usage
const SimpleTypingIndicator(
  dotColor: Colors.green,
  dotSize: 12.0,
  spacing: 8.0,
  duration: Duration(milliseconds: 1500),
  speed: 1.5,
)
```

---

## API Documentation

The API documentation is available in the [API Reference](https://pub.dev/documentation/simple_typing_indicator/latest/simple_typing_indicator/SimpleTypingIndicator-class.html).

---

## Contributing

Feel free to file issues and PRs on the GitHub repository. Your contributions are welcome!

---

## FAQ

### How to customize the animation?

You can customize the animation by adjusting the `dotColor`, `dotSize`, `spacing`, `duration`, and `speed` parameters.

### Can I use this widget in a different project?

Yes, you can use this widget in any Flutter project. Just add the dependency to your `pubspec.yaml` file and import the package.

---

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Additional Information

For more information, please refer to the [GitHub repository](https://github.com/your-username/simple_typing_indicator).