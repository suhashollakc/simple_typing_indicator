# Simple Typing Indicator

**Simple Typing Indicator** is a lightweight, customizable Flutter widget that displays a pulsing "typing..." indicator using animated dots. Perfect for chat applications or any interface where a minimal "typing..." animation is desired.

> **Note:** This package provides a lean, plug-and-play widget with a minimal API surface. It is optimized for performance and simplicity.

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