# 🔥 Rika Firenet Unofficial

[![Version](https://img.shields.io/badge/version-1.1.0-blue.svg)](https://github.com/R-Gld/RikaFirenetUnofficialApp)
[![Flutter](https://img.shields.io/badge/Flutter-3.38.2-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10.0-0175C2?logo=dart)](https://dart.dev)
[![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Linux%20%7C%20macOS-lightgrey)]()
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-Active%20Development-success)]()
[![i18n](https://img.shields.io/badge/languages-7-brightgreen)]()

Unofficial cross-platform Flutter application for remote control and monitoring of **Rika** pellet and wood stoves via the Rika Firenet web interface.

---

## 📑 Table of Contents

- [About](#-about)
- [Features](#-features)
- [Screenshots](#-screenshots)
- [Technical Architecture](#-technical-architecture)
- [Installation](#-installation--setup)
- [Usage](#-usage)
- [Configuration](#-configuration)
- [Development](#-development)
- [Security](#-security)
- [Known Issues](#-known-issues--limitations)
- [Contributing](#-contributing)
- [License](#-license)
- [Disclaimer](#-disclaimer)

---

## 📖 About

**Rika Firenet Unofficial** is a cross-platform mobile application for remote control and monitoring of your Rika stoves via the Rika Firenet web interface.

### 💡 Inspiration and Motivation

This application was created to address limitations of the official Rika Firenet app:

- **Customizable Notifications**: The official app doesn't provide configurable notifications for stove monitoring
- **Accessible Advanced Controls**: Many advanced parameters available on the web interface are not exposed in the official mobile app
- **Comprehensive Monitoring**: Access to 100+ data points (temperatures, sensors, motors, statistics) for detailed tracking
- **Customizable Interface**: Show or hide controls and panels according to your needs
- **Optimized Multi-Stove Management**: More fluid interface for managing multiple stoves
- **Android Widget**: Quick stove status overview directly from your home screen

### 🎯 Target Audience

Owners of Rika pellet or wood stoves equipped with the Firenet module who want:
- More complete control of their installation
- Smart background notifications
- Detailed state and performance monitoring
- Modern and customizable interface
- Quick access via home screen widget

---

## ✨ Features

### 🌍 Internationalization (i18n)

**New in v1.1.0**: Full multilingual support with 7 languages!

- **Supported Languages**:
  - 🇬🇧 **English**
  - 🇫🇷 **Français** (French)
  - 🇩🇰 **Dansk** (Danish)
  - 🇩🇪 **Deutsch** (German)
  - 🇪🇸 **Español** (Spanish)
  - 🇮🇹 **Italiano** (Italian)
  - 🇳🇱 **Nederlands** (Dutch)

- **Features**:
  - Language selector in settings
  - Automatic system language detection with fallback to English
  - 200+ translated strings covering entire UI
  - Localized error messages and notifications
  - Localized day names in heating schedule

### 📱 Android Home Screen Widget

**New in v1.1.0**: Quick stove status at a glance!

- **Widget Features**:
  - Dark modern design matching app theme
  - Real-time status display (online/offline)
  - Current and target temperature
  - Operating mode (Manual/Auto/Comfort)
  - Last update timestamp
  - Direct tap to open app
  - Auto-refresh when app updates data

### ⚙️ Reorganized Settings Screen

**New in v1.1.0**: Better organized settings with submenus!

- **Main Settings**:
  - GitHub repository link card (top)
  - Theme selector (Light/Dark/System)
  - Language selector
  - App version display

- **Organized Submenus**:
  - **Advanced Controls**: Toggle visibility of advanced features
  - **Notifications**: Full notification configuration
  - **Information Panels**: Manage panel visibility

### 🎛️ Real-Time Control

- **Power ON/OFF**: Toggle control with confirmation dialog
- **Target Temperature**: Adjust from 16°C to 30°C (Comfort mode)
- **Heating Power**: Adjustment from 0% to 100% (Manual mode)
- **Operating Modes**:
  - **Manual**: Direct power control
  - **Auto**: Automatic regulation based on temperature
  - **Comfort**: Target temperature with smart management
- **Heating Schedule**: Complete weekly programming with detailed editor

### ⚙️ Advanced Controls (Optional)

- **ECO Mode**: Pellet consumption optimization
- **Room Power Request**: Levels 1 to 4
- **Convection Fans**: Dual fan control, levels 0 to 5
- **Frost Protection**: Minimum temperature from 4°C to 10°C
- **Temperature Calibration**: Offset from -3°C to +3°C
- **Bake Temperature**: Oven temperature control (compatible stoves)

> These controls can be individually enabled/disabled in settings to simplify the interface.

### 📊 Comprehensive Monitoring

Access to **100+ data points** organized in information panels:

- **⚠️ Errors and Warnings**: Real-time active alerts
- **🔒 Safety Status**: Door, pressure, WiFi, temperature limiter
- **🌡️ Sensors**: Multiple temperatures, external requests
- **⚙️ Outputs**: Motor states, fans, dampers, ignition
- **📈 Statistics**: Runtime, consumption, maintenance cycles

Each panel can be shown or hidden according to your preferences.

### 🔔 Background Notification System

**Flagship Feature**: Continuous monitoring even when app is closed (Android)

- **Free Field Selection**: 23 priority fields available in categories:
  - 📊 **Status**: General state, mode, power
  - 🌡️ **Temperatures**: Ambient, target, oven, smoke
  - 🔒 **Safety**: Door, pressure, temperature limiter
  - ⚙️ **Motors**: Auger, suction, cleaning
  - 📉 **Consumption**: Pellets consumed, runtime

- **Configurable Thresholds**: For numerical values (e.g., notify if temperature > 25°C)
- **Grouped Notifications**: Smart grouping of multiple changes
- **Priority Channels**: HIGH for critical alerts, MEDIUM for information
- **Customizable Interval**: 15, 30, 45, or 60 minutes
- **Smart Anti-Spam**: 5-minute throttle between notifications
- **Auto-Reauthentication**: Automatic reconnection if session expires
- **Immediate Test**: "Test Now" function to verify configuration

### 🎨 Interface Customization

- **Control Visibility**: Enable only the controls you need
- **Panel Visibility**: Display only relevant information
- **Material Design 3**: Modern and fluid interface
- **Status Color Coding**:
  - 🔴 **Off**: Stove is off
  - 🟡 **Transition**: Starting or shutting down
  - 🟢 **Active**: Normal operation
  - 🟠 **Warning**: Warning or error
- **Theme Support**: Light, Dark, and System modes

### 🏠 Multi-Stove Management

- **Automatic Detection**: All stoves from your Rika Firenet account
- **Easy Selection**: Intuitive stove switching interface
- **Per-Stove Notifications**: Independent configuration for each installation
- **Widget Support**: Shows data from currently selected stove

---

## 📸 Screenshots

<div align="center">

### Login & Main Controls
<img src=".github/screenshots/screenshot_1_login.jpg" width="250" alt="Login Screen"/> <img src=".github/screenshots/screenshot_2_controls.jpg" width="250" alt="Stove Control Screen"/>

### Advanced Controls & Information Panels
<img src=".github/screenshots/screenshot_3_advanced.jpg" width="250" alt="Advanced Controls"/> <img src=".github/screenshots/screenshot_4_info.jpg" width="250" alt="Information Panels"/>

</div>

---

## 🏗️ Technical Architecture

### 📚 Tech Stack

- **Framework**: Flutter 3.38.2 / Dart 3.10.0
- **State Management**: Riverpod 2.5.1
- **Architecture**: Clean Architecture (presentation / data / services / providers / core)
- **HTTP Client**: Dio 5.4.3 with cookie management
- **Persistence**:
  - `FlutterSecureStorage`: Encrypted credentials
  - `SharedPreferences`: App settings
  - `PersistCookieJar`: Session cookies
- **Background Tasks**: WorkManager 0.9.0 (Android/iOS)
- **Notifications**: flutter_local_notifications 17.0.0
- **Home Widget**: home_widget 0.8.1 (Android)
- **Internationalization**:
  - flutter_localizations (SDK)
  - intl 0.20.2
- **Code Generation**: Freezed 2.5.7, json_serializable 6.8.0, build_runner 2.4.12
- **HTML Parsing**: html 0.15.4
- **URL Launcher**: url_launcher 6.3.0
- **Package Info**: package_info_plus 8.0.0

### 📦 Data Models (Freezed)

- `Stove`: Stove identity and information
- `StoveData`: Complete real-time state
- `StoveControls`: All control parameters
- `StoveSensors`: 100+ sensors and measurements
- `NotificationSettings`: Notification configuration
- `AppSettings`: User interface preferences (including locale)

### 🗂️ Architecture Layers

```
lib/
├── l10n/                  # Internationalization files
│   ├── app_en.arb         # English translations
│   ├── app_fr.arb         # French translations
│   ├── app_da.arb         # Danish translations
│   ├── app_de.arb         # German translations
│   ├── app_es.arb         # Spanish translations
│   ├── app_it.arb         # Italian translations
│   └── app_nl.arb         # Dutch translations
│
├── presentation/          # Presentation layer (UI)
│   ├── screens/          # Main screens
│   │   ├── auth/
│   │   │   └── login_screen.dart
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   ├── stove_detail/
│   │   │   └── stove_detail_screen.dart
│   │   └── settings/
│   │       ├── settings_screen.dart
│   │       ├── advanced_controls_settings_screen.dart
│   │       ├── notifications_settings_screen.dart
│   │       └── info_panels_settings_screen.dart
│   ├── widgets/          # Reusable components
│   │   ├── controls/     # Control widgets
│   │   ├── info/         # Information panels
│   │   └── common/       # Common widgets
│   └── theme/            # Theme and colors
│       ├── app_colors.dart
│       └── app_theme.dart
│
├── data/                 # Data layer
│   ├── models/           # Freezed data classes
│   ├── repositories/     # Repository implementations
│   │   ├── auth_repository.dart
│   │   ├── stove_repository.dart
│   │   ├── storage_repository.dart
│   │   └── notification_repository.dart
│   └── datasources/      # Data sources
│       ├── rika_api_client.dart
│       └── html_parser_service.dart
│
├── services/             # Business logic
│   ├── background_polling_service.dart
│   ├── background_task_handler.dart
│   ├── notification_change_detector.dart
│   ├── notification_service.dart
│   ├── permission_service.dart
│   ├── battery_optimization_service.dart
│   └── home_widget_service.dart
│
├── providers/            # Riverpod providers
│   ├── auth_provider.dart
│   ├── stove_provider.dart
│   ├── settings_provider.dart
│   └── notification_provider.dart
│
└── core/                 # Utilities and constants
    ├── constants/
    │   └── api_constants.dart
    ├── errors/
    │   ├── exceptions.dart
    │   └── failures.dart
    └── utils/
        └── cookie_parser.dart
```

### 🌐 Rika Firenet API

The application communicates with the Rika Firenet web API via the following endpoints:

| Endpoint | Method | Description |
|----------|---------|-------------|
| `/web/login` | POST | Authentication (email + password) |
| `/web/summary` | GET | Stove list (HTML parsing) |
| `/api/client/{id}/status` | GET | Complete stove state (JSON) |
| `/api/client/{id}/controls` | POST | Control update |

**API Characteristics**:
- Cookie-based authentication `connect.sid`
- Confirmation polling (10 × 2s) after control changes
- ⚠️ Temperatures as **STRING** ("16"-"30") in API
- ⚠️ **Complete** update required (no partial PATCH)

### ⚙️ Background Tasks

The notification system uses **WorkManager** to execute periodic tasks:

**Execution Flow**:
1. Load credentials (FlutterSecureStorage)
2. Create API client (PersistCookieJar)
3. Fetch stove data
4. Auto-reauthentication if session expired
5. Snapshot of monitored fields
6. Comparison with previous snapshot
7. Change detection + threshold verification
8. Send local notifications
9. Save new snapshot
10. Update home widget data

**Constraints**:
- Execution in **separate isolate** (no app context access)
- Minimum interval: 15 minutes (WorkManager constraint)
- Respects Android Doze mode (possible delays)

---

## 🚀 Installation & Setup

### ✅ Prerequisites

- **Flutter**: 3.38.2 or higher
- **Dart**: 3.10.0 or higher
- **Development Environment**:
  - Android Studio (for Android)
  - Xcode (for iOS, requires macOS)
  - Linux development tools (for Linux)
- **Rika Firenet Account**: [https://www.rika-firenet.com](https://www.rika-firenet.com)

### 📥 Installation

```bash
# Clone the repository
git clone https://github.com/R-Gld/RikaFirenetUnofficialApp.git
cd RikaFirenetUnofficialApp

# Install dependencies
flutter pub get

# Generate code files (Freezed, JSON, i18n)
flutter pub run build_runner build --delete-conflicting-outputs

# Run the application (development)
flutter run
```

### 🏗️ Production Build

```bash
# Android APK (debug)
flutter build apk

# Android APK (release)
flutter build apk --release

# Android App Bundle for Play Store
flutter build appbundle --release

# iOS (requires macOS and Xcode)
flutter build ios --release

# Linux
flutter build linux --release

# macOS
flutter build macos --release
```

---

## 📱 Usage

### 🔐 First Connection

1. **Open the application**
2. **Enter your Rika Firenet credentials**:
   - Email
   - Password
3. **Automatic Detection**: The app discovers all your stoves
4. **Automatic Navigation**: If single stove, direct navigation to control screen

### 🌍 Change Language

1. **Settings** → **Language**
2. Select from 7 available languages or use System default
3. App restarts with selected language

### 🏠 Add Home Screen Widget (Android)

1. Long-press on home screen
2. Select **Widgets**
3. Find **Rika Firenet** widget
4. Drag to home screen
5. Widget shows current stove status
6. Tap widget to open app

### 🎛️ Control the Stove

- **Turn ON/OFF**: Toggle button with confirmation dialog
- **Temperature**: Slider from 16°C to 30°C (Comfort mode)
- **Power**: Slider from 0% to 100% (Manual mode)
- **Mode**: Manual / Auto / Comfort selector
- **Refresh**: Pull-to-refresh to update data

> Changes may take 10-20 seconds to be confirmed by the stove.

### 🔔 Enable Notifications

1. **Settings** → **Notifications**
2. **Enable toggle** (Android permission requested if needed)
3. **Choose interval**: 15, 30, 45, or 60 minutes
4. **Select fields to monitor**:
   - By category: Status, Temperatures, Safety, Motors, Consumption
   - 23 priority fields available
5. **Optional**: Configure thresholds for numerical fields
   - Example: "Ambient temperature > 25°C"
6. **Test**: "Test Now" button to verify configuration

### 🎨 Customize Interface

**Advanced Controls**:
1. **Settings** → **Advanced Controls**
2. Enable/disable according to your needs:
   - ECO Mode
   - Room Power Request
   - Convection Fans
   - Frost Protection
   - Temperature Calibration
   - Bake Temperature

**Information Panels**:
1. **Settings** → **Information Panels**
2. Choose panels to display:
   - Errors and Warnings
   - Safety Status
   - Sensors
   - Outputs
   - Statistics

---

## ⚙️ Configuration

### 🔑 Android Permissions

Required permissions in `AndroidManifest.xml`:

- `INTERNET`: Communication with Rika Firenet API
- `POST_NOTIFICATIONS`: Local notifications (Android 13+)
- `WAKE_LOCK`: Keep active for background tasks
- `RECEIVE_BOOT_COMPLETED`: Restart tasks after reboot
- `VIBRATE`: Vibration during notifications
- `REQUEST_IGNORE_BATTERY_OPTIMIZATIONS`: Background network access

### 💾 Storage

| Data Type | Storage Method | Encryption |
|-----------|----------------|------------|
| Credentials (email/password) | FlutterSecureStorage | ✅ Yes |
| Session cookies | PersistCookieJar | ⚠️ No |
| App settings | SharedPreferences | ⚠️ No |
| Notification snapshots | SharedPreferences | ⚠️ No |
| Widget data | HomeWidget (SharedPreferences) | ⚠️ No |

---

## 🔧 Development

### 🛠️ Useful Commands

```bash
# Static code analysis
flutter analyze

# Format code
flutter format lib/ test/

# Run tests
flutter test

# Tests with coverage
flutter test --coverage

# Clean build
flutter clean && flutter pub get

# Generate app icons
flutter pub run flutter_launcher_icons

# Generate i18n files
flutter pub get  # Auto-generates from ARB files
```

### 🏗️ Code Generation (Freezed)

```bash
# Single build (after model modifications)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (automatic regeneration)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 🌍 Adding New Language

1. Create new ARB file: `lib/l10n/app_XX.arb` (XX = language code)
2. Translate all 200+ strings from `app_en.arb`
3. Add locale to `lib/app.dart` supportedLocales
4. Add dropdown item in `settings_screen.dart`
5. Run `flutter pub get` to generate Dart files

### 📝 Commit Structure

- Clean and readable Git history
- Descriptive commit messages
- Feature branches for new developments
- Pull requests for integration

---

## 🛡️ Security

### ✅ Implemented Best Practices

- ✅ **Encrypted credentials** at rest (FlutterSecureStorage)
- ✅ **No plaintext storage** of passwords
- ✅ **HTTPS enforced**: Automatic HTTP → HTTPS upgrade
- ✅ **Secure session cookies** with persistence
- ✅ **Auto-logout** with confirmation dialog
- ✅ **Authentication error** handling
- ✅ **Notification** if reauthentication fails in background

### ⚠️ Considerations

- **Unofficial** API (no RIKA support)
- Use **at your own risk**
- **Test** critical controls (power on/off)
- **Don't rely solely** on this app for your installation's safety

---

## 🐛 Known Issues & Limitations

### 🌐 Rika API Limitations

- **Polling required**: No websocket, confirmation via polling (10 × 2s)
- **Confirmation delay**: 10-20 seconds to see applied changes
- **Session cookies**: Can expire (auto-renewal implemented)
- **Temperature format**: Temperatures MUST be strings in API

### 📱 Platform Limitations

- **Background notifications**: Android only (not iOS/Linux)
- **Doze mode**: WorkManager respects Android optimizations (possible delays)
- **Minimum interval**: 15 minutes (WorkManager constraint)
- **Home widget**: Android only

### 🚧 Potential TODOs

- [ ] Temperature history graphs
- [ ] Detailed event logs
- [ ] iOS widgets for home screen
- [ ] Deep linking from notifications
- [ ] CSV data export
- [ ] Offline mode with cache
- [ ] Additional language support

---

## 🤝 Contributing

This project is **open source**. Contributions are welcome!

### How to Contribute

1. **Fork** the repository
2. **Create a feature branch**
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **Commit** your changes
   ```bash
   git commit -m 'Add AmazingFeature'
   ```
4. **Push** to the branch
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **Open a Pull Request**

### Guidelines

- Follow **Flutter/Dart conventions**
- Use `flutter analyze` before committing
- Add **tests** if applicable
- **Document** new features
- Keep commit messages clear and descriptive

---

## 📄 License

This project is distributed under the **MIT** license. See the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**[@R-Gld](https://github.com/R-Gld)**

---

## 🙏 Acknowledgments

- **RIKA** for their excellent pellet and wood stoves
- The **Flutter community** for the rich ecosystem and packages
- All **contributors** and **testers** of the application

---

## ⚖️ Disclaimer

> **IMPORTANT**: This application is **NOT official** and is **NOT affiliated** with RIKA or its subsidiaries. It uses the Rika Firenet web interface in an undocumented and unsupported manner.

### ⚠️ Warnings

- **Use at your own risk**
- **No guarantee** of continuous operation
- The API may **change without notice**
- **Always test** critical commands (power on/off)
- **Don't rely solely** on this application for your installation's safety
- RIKA is **not responsible** for damages caused by using this application

### 📞 In Case of Problem

If your stove malfunctions:
1. **Use the official** Rika Firenet interface
2. **Contact RIKA** support
3. **Don't modify** critical parameters without technical knowledge

---

## 📞 Support

- **GitHub Issues**: [https://github.com/R-Gld/RikaFirenetUnofficialApp/issues](https://github.com/R-Gld/RikaFirenetUnofficialApp/issues)

---

## 🔗 Useful Links

- [Official RIKA Website](https://www.rika.at/)
- [Rika Firenet (web interface)](https://www.rika-firenet.com/)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [WorkManager Plugin](https://pub.dev/packages/workmanager)
- [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)
- [Home Widget Plugin](https://pub.dev/packages/home_widget)

---

<div align="center">

**Made with ❤️ for the Rika stove owners community**

**Version 1.1.0** | **7 Languages Supported** | **100+ Monitored Data Points**

</div>
