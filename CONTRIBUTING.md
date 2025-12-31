# Contributing to Rika Firenet Unofficial

Thank you for your interest in contributing to Rika Firenet Unofficial! 🔥

This document provides guidelines and instructions for contributing to this project. Whether you're fixing bugs, adding features, improving documentation, or adding translations, your contributions are welcome and appreciated.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Initial Setup](#initial-setup)
  - [Code Generation](#code-generation)
- [Development Workflow](#development-workflow)
  - [Branch Strategy](#branch-strategy)
  - [Making Changes](#making-changes)
  - [Commit Message Convention](#commit-message-convention)
- [Code Style & Guidelines](#code-style--guidelines)
  - [Dart/Flutter Conventions](#dartflutter-conventions)
  - [Architecture Patterns](#architecture-patterns)
  - [State Management (Riverpod)](#state-management-riverpod)
- [Testing](#testing)
  - [Testing Philosophy](#testing-philosophy)
  - [Running Tests](#running-tests)
  - [Writing Tests](#writing-tests)
- [Internationalization](#internationalization)
  - [Adding New Translations](#adding-new-translations)
  - [Adding a New Language](#adding-a-new-language)
- [Specific Contribution Areas](#specific-contribution-areas)
  - [Adding New Stove Controls](#adding-new-stove-controls)
  - [Improving Notifications](#improving-notifications)
  - [UI/UX Improvements](#uiux-improvements)
  - [Documentation](#documentation)
- [Pull Request Process](#pull-request-process)
  - [Before Submitting a PR](#before-submitting-a-pr)
  - [PR Template](#pr-template)
  - [Review Process](#review-process)
- [Code Generation Reference](#code-generation-reference)
- [Platform-Specific Development](#platform-specific-development)
- [Common Issues & Troubleshooting](#common-issues--troubleshooting)
- [Resources](#resources)
- [Getting Help](#getting-help)
- [Recognition](#recognition)

---

## Code of Conduct

We are committed to providing a welcoming and inclusive environment for all contributors. Please:

- **Be respectful and inclusive** in all communications
- **Provide constructive feedback** and be open to receiving it
- **Focus on code quality and learning** - we're all here to improve
- **Be patient** with new contributors and help them learn
- **Respect different viewpoints** and experiences

Any behavior that violates these principles will not be tolerated.

---

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK** 3.38.2 or higher ([Installation Guide](https://flutter.dev/docs/get-started/install))
- **Dart SDK** 3.10.0 or higher (included with Flutter)
- **Git** for version control
- **IDE**: VS Code, Android Studio, or IntelliJ IDEA with Flutter/Dart plugins
- **Android Studio** (for Android development and emulator)
- **Xcode** (for iOS development, macOS only)
- **RIKA stove with Firenet module** (optional, for testing with real hardware)

Verify your Flutter installation:

```bash
flutter doctor -v
```

### Initial Setup

Follow these steps to set up your development environment:

#### 1. Fork the Repository

Go to [github.com/R-Gld/RikaFirenetUnofficialApp](https://github.com/R-Gld/RikaFirenetUnofficialApp) and click the "Fork" button in the top right corner.

#### 2. Clone Your Fork

```bash
git clone https://github.com/YOUR_USERNAME/RikaFirenetUnofficialApp.git
cd RikaFirenetUnofficialApp/firenet_unofficial
```

#### 3. Add Upstream Remote

This allows you to keep your fork synchronized with the main repository:

```bash
git remote add upstream https://github.com/R-Gld/RikaFirenetUnofficialApp.git
```

#### 4. Install Dependencies

```bash
flutter pub get
```

#### 5. Generate Code

The project uses code generation for models, JSON serialization, and internationalization:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

#### 6. Verify Setup

Run these commands to ensure everything is set up correctly:

```bash
flutter doctor -v        # Check Flutter installation
flutter analyze          # Run static analysis
flutter test             # Run tests
```

#### 7. Run the App

```bash
flutter run
```

Select a device (Android emulator, iOS simulator, or connected device) when prompted.

### Code Generation

This project heavily uses code generation. You'll need to regenerate code when:

- **Modifying Freezed models** in `lib/data/models/` (files with `@freezed` annotations)
- **Changing JSON serialization** (`@JsonSerializable` annotations)
- **Updating translations** in ARB files (`lib/l10n/*.arb`)

**Regenerate code:**

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Watch mode** (auto-regenerates on file changes):

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

**Clean build** (if you encounter conflicts):

```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

---

## Development Workflow

### Branch Strategy

- **`main`**: Stable production branch
- **Feature branches**: `feature/your-feature-name`
- **Bug fixes**: `fix/bug-description`
- **Refactoring**: `refactor/area-name`
- **Documentation**: `docs/topic-name`

**Example:**

```bash
# Update your local main branch
git checkout main
git pull upstream main

# Create a new feature branch
git checkout -b feature/add-eco-mode-control
```

### Making Changes

1. **Create a new branch** from the latest `main`
2. **Make your changes** following code style guidelines
3. **Run code generation** if you modified models or i18n files
4. **Test your changes** locally
5. **Commit** with conventional commit messages (see below)
6. **Push** to your fork
7. **Open a Pull Request** to the upstream repository

### Commit Message Convention

This project uses **Conventional Commits** format:

```
type(scope): description

[optional body]
```

**Types:**

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style/formatting (no functional changes)
- `refactor`: Code refactoring (no functional changes)
- `test`: Adding or updating tests
- `chore`: Maintenance tasks (dependencies, configs)
- `ci`: CI/CD configuration changes

**Examples:**

```bash
feat(notifications): add threshold alerts for temperature
fix(auth): resolve session timeout issue
docs(readme): update installation instructions
refactor(heating-schedule): simplify day key handling
test(stove-service): add unit tests for temperature parsing
chore: bump version to 1.4.0
```

---

## Code Style & Guidelines

### Dart/Flutter Conventions

This project follows Flutter's recommended practices:

- **Follow linting rules** defined in `analysis_options.yaml` (`package:flutter_lints/flutter.yaml`)
- **Use `const` constructors** wherever possible for better performance
- **Prefer `final`** over `var` for immutable variables
- **Use meaningful names** for variables, functions, and classes
- **Run `flutter analyze`** before committing to catch issues
- **Run `flutter format`** to ensure consistent code formatting:

```bash
flutter format lib/ test/
```

### Architecture Patterns

The project follows **Clean Architecture** principles:

```
lib/
├── presentation/     # UI layer (widgets, screens)
│   ├── screens/      # Full-page screens
│   └── widgets/      # Reusable UI components
├── data/             # Data layer
│   ├── models/       # Freezed data models
│   ├── repositories/ # Data access abstraction
│   └── datasources/  # API clients, local storage
├── services/         # Business logic
│   └── background/   # Background tasks (WorkManager)
├── providers/        # Riverpod providers (state management)
├── core/             # Utilities, constants, errors
└── l10n/             # Internationalization (ARB files)
```

**Guidelines:**

- **Keep screens stateless** when possible; use Riverpod for state management
- **Models should be immutable** - use `@freezed` annotation
- **Use the Repository pattern** for data access abstraction
- **Business logic goes in Services**, not in UI widgets
- **Providers** expose state to the UI layer

### State Management (Riverpod)

This project uses **Riverpod** for state management.

**Creating a provider:**

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stoveServiceProvider = Provider<StoveService>((ref) {
  return StoveService(ref.watch(dioProvider));
});
```

**Using a provider in widgets:**

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stoveData = ref.watch(stoveDataProvider);

    return stoveData.when(
      data: (data) => Text('Temperature: ${data.temperature}°C'),
      loading: () => CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    );
  }
}
```

**Resources:**
- [Riverpod Documentation](https://riverpod.dev/)
- [Riverpod Architecture Guide](https://riverpod.dev/docs/concepts/about_code_generation)

---

## Testing

### Testing Philosophy

- **Tests are recommended but not mandatory** for contributions
- Adding tests is **highly appreciated** and helps improve code quality
- **Critical features** (authentication, background tasks, API parsing) should have tests
- **Widget tests** for complex UI components are encouraged

Currently, the project has minimal test coverage. Contributions that add tests are especially valuable!

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/services/stove_service_test.dart

# Run with coverage report
flutter test --coverage

# View coverage report (requires lcov)
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html  # macOS
xdg-open coverage/html/index.html  # Linux
```

### Writing Tests

**Unit test example:**

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([Dio])
void main() {
  group('StoveService', () {
    late StoveService service;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      service = StoveService(mockDio);
    });

    test('should parse temperature correctly', () {
      // Arrange
      final input = '25.5';

      // Act
      final result = service.parseTemperature(input);

      // Assert
      expect(result, 25.5);
    });
  });
}
```

**Test locations:**

- **Unit tests**: `test/services/`, `test/data/`
- **Widget tests**: `test/widgets/`
- **Mock classes**: Use Mockito with `@GenerateMocks` annotation

**Resources:**
- [Flutter Testing Guide](https://flutter.dev/docs/testing)
- [Mockito Documentation](https://pub.dev/packages/mockito)

---

## Internationalization

The app currently supports **7 languages**: English, French, Danish, German, Spanish, Italian, and Dutch.

### Adding New Translations

To add or update translations:

#### 1. Locate ARB Files

Translation files are in `lib/l10n/`:

- `app_en.arb` (English, template)
- `app_fr.arb` (French)
- `app_da.arb` (Danish)
- `app_de.arb` (German)
- `app_es.arb` (Spanish)
- `app_it.arb` (Italian)
- `app_nl.arb` (Dutch)

#### 2. Add String to Template

Add the new string to `app_en.arb`:

```json
{
  "myNewString": "Hello, world!",
  "@myNewString": {
    "description": "Greeting message shown on home screen"
  }
}
```

#### 3. Add Translations

Add the same key to all other language files:

```json
// app_fr.arb
{
  "myNewString": "Bonjour le monde !"
}

// app_de.arb
{
  "myNewString": "Hallo Welt!"
}
```

#### 4. Regenerate Localization Files

```bash
flutter pub get
```

This automatically generates localization code in `lib/generated/`.

#### 5. Use in Code

```dart
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Text(AppLocalizations.of(context)!.myNewString)
```

### Adding a New Language

To add support for a new language:

1. **Create** `app_XX.arb` (where `XX` is the language code, e.g., `es` for Spanish)
2. **Copy structure** from `app_en.arb`
3. **Translate all strings** to the target language
4. **Run** `flutter pub get` to generate localization files
5. The language will **auto-detect** based on device locale

**Resources:**
- [Flutter Internationalization Guide](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

---

## Specific Contribution Areas

### Adding New Stove Controls

To add a new control feature (e.g., a new setting or sensor reading):

1. **Identify the field** in the Rika Firenet API
   - Use browser developer tools on https://www.rika-firenet.com
   - Inspect network requests to find JSON field names

2. **Add field to model** in `lib/data/models/stove.dart`:

```dart
@freezed
class Stove with _$Stove {
  const factory Stove({
    required String id,
    required String name,
    required double temperature,
    // Add your new field here
    String? newField,
  }) = _Stove;

  factory Stove.fromJson(Map<String, dynamic> json) => _$StoveFromJson(json);
}
```

3. **Run code generation**:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Add UI control** in `lib/presentation/screens/stove_detail_screen.dart`

5. **Add i18n strings** for labels in ARB files

6. **Test** with real stove or mock data

### Improving Notifications

Background notifications are a key feature of this app.

**Relevant files:**

- `lib/services/background/notification_service.dart` - Notification logic
- `lib/services/background/background_tasks.dart` - WorkManager setup
- `lib/presentation/screens/notification_settings_screen.dart` - Configuration UI

**Testing notes:**

- Background tasks behavior varies by Android device manufacturer
- Test on multiple devices if possible (Samsung, Google Pixel, etc.)
- Check battery optimization settings

### UI/UX Improvements

When contributing UI changes:

- Use **Material Design 3** components
- Support **Light, Dark, and System themes**
- Ensure **accessibility** (semantic labels, sufficient contrast ratios)
- Test on **various screen sizes** (phones, tablets)
- Place reusable components in `lib/presentation/widgets/`

**Resources:**
- [Material Design 3](https://m3.material.io/)
- [Flutter Accessibility](https://flutter.dev/docs/development/accessibility-and-localization/accessibility)

### Documentation

When adding features, please update:

- **README.md** - Add to features list, update screenshots if needed
- **Code comments** - Explain complex logic
- **CHANGELOG.md** - Document your changes (if file exists)
- **Screenshots** - Add to `.github/screenshots/` for UI changes

---

## Pull Request Process

### Before Submitting a PR

Ensure you've completed this checklist:

- [ ] Code follows **style guidelines** (`flutter analyze` passes with no errors)
- [ ] Code is **formatted** (`flutter format lib/ test/`)
- [ ] **Commit messages** follow conventional commit format
- [ ] **Code generation** has been run if models/i18n were modified
- [ ] **Manual testing** performed (describe in PR description)
- [ ] **Tests added or updated** (if applicable)
- [ ] **Documentation updated** (README, code comments)
- [ ] **No sensitive data** committed (credentials, API keys, personal info)

### PR Template

When opening a Pull Request, please include:

```markdown
## Description

Brief description of what this PR does.

## Type of Change

- [ ] Bug fix (non-breaking change that fixes an issue)
- [ ] New feature (non-breaking change that adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] Documentation update

## Testing

Describe how you tested this change:
- Manual testing steps
- Automated tests added
- Devices/platforms tested

## Screenshots (if UI changes)

[Add screenshots here]

## Checklist

- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No console warnings/errors
```

### Review Process

- The maintainer (@R-Gld) will review your Pull Request
- **Feedback will be provided constructively** - don't take it personally!
- You may be **asked to make changes** based on review feedback
- Once approved, your PR will be **merged to `main`**
- Your contribution will be **credited in release notes**

Thank you for your patience during the review process!

---

## Code Generation Reference

### When to Generate Code

Run code generation in these scenarios:

**After modifying Freezed models** (`lib/data/models/*.dart` with `@freezed`):

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Watch mode** (auto-regenerates on file changes):

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

**Clean build** (if conflicts occur):

```bash
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### Generated Files (DO NOT EDIT)

The following files are auto-generated - **do not edit them manually**:

- `*.freezed.dart` - Freezed-generated immutable models
- `*.g.dart` - JSON serialization code
- `lib/generated/` - Auto-generated localization files

**Note:** In this project, generated files are committed to Git. Always regenerate before committing changes to models or translations.

---

## Platform-Specific Development

### Android

- **Build APK**: `flutter build apk --debug`
- **Build App Bundle**: `flutter build appbundle --release` (for Play Store)
- **Widget support**: Home screen widget via `home_widget` package
- **Background tasks**: WorkManager for notifications
- **Testing**: Use Android emulator or physical device

### iOS

- **Build**: `flutter build ios` (requires macOS and Xcode)
- **Widget support**: Not currently implemented
- **Background limitations**: iOS has stricter background task restrictions than Android
- **Testing**: Use iOS Simulator or physical iPhone/iPad

### Linux/macOS Desktop

- **Build Linux**: `flutter build linux`
- **Build macOS**: `flutter build macos`
- **Limitations**: Background notifications may not work as expected on desktop platforms
- **Testing**: Limited testing coverage for desktop builds

---

## Common Issues & Troubleshooting

### Issue: Code generation fails

**Solution:**

```bash
flutter clean
flutter pub get
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### Issue: "MissingPluginException"

This typically happens when plugins are not properly registered.

**Solution:**

- Use **Hot Restart** (not Hot Reload)
- In IDE: Click the "Hot Restart" button
- Or: Stop the app and run `flutter run` again

### Issue: Localization strings not found

**Solution:**

```bash
flutter pub get
flutter clean
flutter run
```

### Issue: Build fails on Android

**Solution:**

```bash
cd android
./gradlew clean
cd ..
flutter clean
flutter pub get
flutter run
```

### Issue: "Gradle build failed"

- Ensure **Java 17** is installed (required by Flutter 3.x)
- Check `android/gradle.properties` for correct configuration
- Invalidate Android Studio caches: File → Invalidate Caches / Restart

---

## Resources

### Official Documentation

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Riverpod Documentation](https://riverpod.dev/)
- [Freezed Package](https://pub.dev/packages/freezed)
- [Material Design 3](https://m3.material.io/)

### Project-Specific

- [README.md](README.md) - Features and usage guide
- [Privacy Policy](https://r-gld.github.io/RikaFirenetUnofficialApp/privacy-policy.html)
- [GitHub Issues](https://github.com/R-Gld/RikaFirenetUnofficialApp/issues) - Bug reports and feature requests

### Rika Firenet API

- **Official site**: https://www.rika-firenet.com
- **Note**: The API is unofficial and undocumented. It has been reverse-engineered from the Rika Firenet web interface.

---

## Getting Help

If you need assistance:

- **GitHub Issues**: For bugs, feature requests, and questions
- **GitHub Discussions**: For general questions and community support
- **Email**: Contact the maintainer via GitHub profile

Don't hesitate to ask questions! We're here to help.

---

## Recognition

Contributors will be recognized in:

- **Release notes** for their contributions
- **GitHub contributors list**
- **Commit history** (please use your real name or preferred handle)

Every contribution, no matter how small, makes this project better. Thank you! 🔥

---

**Made with ❤️ for the RIKA stove owners community**
