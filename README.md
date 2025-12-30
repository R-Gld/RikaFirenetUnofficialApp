# 🔥 Rika Firenet Unofficial

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/R-Gld/FirenetUnofficialApp)
[![Flutter](https://img.shields.io/badge/Flutter-3.38.2-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10.0-0175C2?logo=dart)](https://dart.dev)
[![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS%20%7C%20Linux%20%7C%20macOS-lightgrey)]()
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-Active%20Development-success)]()

Application Flutter non officielle de contrôle à distance pour poêles à granulés et à bois **Rika** via l'interface web Rika Firenet.

---

## 📑 Table des matières

- [À propos](#-à-propos)
- [Fonctionnalités](#-fonctionnalités)
- [Captures d'écran](#-captures-décran)
- [Architecture technique](#-architecture-technique)
- [Installation](#-installation-et-configuration)
- [Utilisation](#-utilisation)
- [Configuration](#-configuration)
- [Développement](#-développement)
- [Sécurité](#-sécurité)
- [Problèmes connus](#-problèmes-connus-et-limitations)
- [Contribution](#-contribution)
- [License](#-license)
- [Disclaimer](#-disclaimer)

---

## 📖 À propos

**Rika Firenet Unofficial** est une application mobile multi-plateforme permettant de contrôler et surveiller vos poêles Rika à distance via l'interface web Rika Firenet.

### 💡 Inspirations et motivations

Cette application a été créée pour pallier les limitations de l'application officielle Rika Firenet :

- **Notifications personnalisables** : L'application officielle ne propose pas de système de notifications configurables pour surveiller l'état du poêle
- **Contrôles avancés accessibles** : De nombreux paramètres avancés disponibles sur l'interface web ne sont pas exposés dans l'app mobile officielle
- **Monitoring exhaustif** : Accès à plus de 100 points de données (températures, capteurs, moteurs, statistiques) pour un suivi détaillé
- **Interface personnalisable** : Possibilité d'afficher ou masquer les contrôles et panneaux selon vos besoins
- **Gestion multi-poêles optimisée** : Interface plus fluide pour gérer plusieurs poêles

### 🎯 Public cible

Propriétaires de poêles à granulés ou à bois Rika équipés du module Firenet qui souhaitent :
- Un contrôle plus complet de leur installation
- Des notifications intelligentes en arrière-plan
- Un monitoring détaillé de l'état et des performances
- Une interface moderne et personnalisable

---

## ✨ Fonctionnalités

### 🎛️ Contrôle en temps réel

- **Allumage/Extinction** : Contrôle ON/OFF avec dialogue de confirmation
- **Température cible** : Réglage de 16°C à 30°C (mode Confort)
- **Puissance de chauffe** : Ajustement de 0% à 100% (mode Manuel)
- **Modes de fonctionnement** :
  - **Manuel** : Contrôle direct de la puissance
  - **Auto** : Régulation automatique selon température
  - **Confort** : Température cible avec gestion intelligente
- **Programmation horaire** : Planning hebdomadaire complet

### ⚙️ Contrôles avancés (optionnels)

- **Mode ECO** : Optimisation de la consommation de granulés
- **Demande puissance pièce** : Niveaux 1 à 4
- **Ventilateurs de convection** : Double ventilateur, niveaux 0 à 5
- **Protection anti-gel** : Température minimale de 4°C à 10°C
- **Calibration température** : Offset de -3°C à +3°C
- **Température four** : Contrôle de la température du four (poêles compatibles)

> Ces contrôles peuvent être activés/désactivés individuellement dans les paramètres pour simplifier l'interface.

### 📊 Monitoring complet

Accès à **100+ points de données** organisés en panneaux d'information :

- **⚠️ Erreurs et avertissements** : Alertes actives en temps réel
- **🔒 Statut sécurité** : Porte, pression, WiFi, limiteur de température
- **🌡️ Capteurs** : Températures multiples, demandes externes
- **⚙️ Sorties** : État des moteurs, ventilateurs, volets, allumage
- **📈 Statistiques** : Runtime, consommation, cycles d'entretien

Chaque panneau peut être affiché ou masqué selon vos préférences.

### 🔔 Système de notifications en arrière-plan

**Feature phare** : Surveillance continue même application fermée (Android)

- **Sélection libre des champs** : 23 champs prioritaires disponibles répartis en catégories :
  - 📊 **Status** : État général, mode, puissance
  - 🌡️ **Températures** : Ambiante, cible, four, fumées
  - 🔒 **Sécurité** : Porte, pression, limiteur température
  - ⚙️ **Moteurs** : Vis sans fin, aspiration, nettoyage
  - 📉 **Consommation** : Granulés consommés, runtime

- **Seuils configurables** : Pour les valeurs numériques (ex: notifier si température > 25°C)
- **Notifications groupées** : Regroupement intelligent des changements multiples
- **Canaux prioritaires** : HIGH pour alertes critiques, MEDIUM pour informations
- **Intervalle personnalisable** : 15, 30, 45 ou 60 minutes
- **Anti-spam intelligent** : Throttle de 5 minutes entre notifications
- **Auto-reauthentification** : Reconnexion automatique en cas d'expiration de session
- **Test immédiat** : Fonction "Tester maintenant" pour vérifier la configuration

### 🎨 Personnalisation de l'interface

- **Visibilité des contrôles** : Activez uniquement les contrôles dont vous avez besoin
- **Visibilité des panneaux** : Affichez seulement les informations pertinentes
- **Material Design 3** : Interface moderne et fluide
- **Codes couleur par statut** :
  - 🔴 **Off** : Poêle éteint
  - 🟡 **Transition** : Démarrage ou extinction en cours
  - 🟢 **Active** : Fonctionnement normal
  - 🟠 **Warning** : Avertissement ou erreur

### 🏠 Gestion multi-poêles

- **Détection automatique** : Tous les poêles de votre compte Rika Firenet
- **Sélection facile** : Interface de changement de poêle intuitive
- **Notifications par poêle** : Configuration indépendante pour chaque installation

---

## 📸 Captures d'écran

> Section à compléter avec des captures d'écran de l'application :
> - Écran de connexion
> - Liste des poêles
> - Écran de détail avec contrôles
> - Panneaux d'information dépliables
> - Configuration des notifications
> - Sélection des champs à surveiller

---

## 🏗️ Architecture technique

### 📚 Stack technique

- **Framework** : Flutter 3.38.2 / Dart 3.10.0
- **State Management** : Riverpod 2.5.1
- **Architecture** : Clean Architecture (presentation / data / services / providers / core)
- **HTTP Client** : Dio 5.4.3 avec gestion de cookies
- **Persistence** :
  - `FlutterSecureStorage` : Credentials chiffrés
  - `SharedPreferences` : Paramètres d'application
  - `PersistCookieJar` : Session cookies
- **Background Tasks** : WorkManager 0.9.0 (Android/iOS)
- **Notifications** : flutter_local_notifications 17.0.0
- **Code Generation** : Freezed 2.5.7, json_serializable 6.8.0, build_runner 2.4.12
- **HTML Parsing** : html 0.15.4

### 📦 Modèles de données (Freezed)

- `Stove` : Identité et informations du poêle
- `StoveData` : État complet en temps réel
- `StoveControls` : Tous les paramètres de contrôle
- `StoveSensors` : Plus de 100 capteurs et mesures
- `NotificationSettings` : Configuration des notifications
- `AppSettings` : Préférences d'interface utilisateur

### 🗂️ Couches architecture

```
lib/
├── presentation/          # Couche présentation (UI)
│   ├── screens/          # Écrans principaux
│   │   ├── login_screen.dart
│   │   ├── home_screen.dart
│   │   ├── stove_detail_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets/          # Composants réutilisables
│   │   ├── controls/     # Widgets de contrôle
│   │   ├── info_panels/  # Panneaux d'information
│   │   └── common/       # Widgets communs
│   └── theme/            # Thème et couleurs
│       ├── app_colors.dart
│       └── app_theme.dart
│
├── data/                 # Couche données
│   ├── models/           # Classes de données Freezed
│   ├── repositories/     # Implémentations repositories
│   │   ├── auth_repository.dart
│   │   ├── stove_repository.dart
│   │   ├── storage_repository.dart
│   │   └── notification_repository.dart
│   └── datasources/      # Sources de données
│       ├── rika_api_client.dart
│       └── html_parser_service.dart
│
├── services/             # Logique métier
│   ├── background_polling_service.dart
│   ├── background_task_handler.dart
│   ├── notification_change_detector.dart
│   ├── notification_service.dart
│   └── permission_service.dart
│
├── providers/            # Providers Riverpod
│   ├── auth_provider.dart
│   ├── stove_provider.dart
│   ├── settings_provider.dart
│   └── notification_provider.dart
│
└── core/                 # Utilitaires et constantes
    ├── constants/
    │   └── api_constants.dart
    ├── errors/
    │   ├── exceptions.dart
    │   └── failures.dart
    └── utils/
        └── cookie_parser.dart
```

### 🌐 API Rika Firenet

L'application communique avec l'API web Rika Firenet via les endpoints suivants :

| Endpoint | Méthode | Description |
|----------|---------|-------------|
| `/web/login` | POST | Authentification (email + password) |
| `/web/summary` | GET | Liste des poêles (parsing HTML) |
| `/api/client/{id}/status` | GET | État complet du poêle (JSON) |
| `/api/client/{id}/controls` | POST | Mise à jour des contrôles |

**Caractéristiques de l'API** :
- Authentification par cookie `connect.sid`
- Polling de confirmation (10 × 2s) après changement de contrôles
- ⚠️ Températures en **STRING** ("16"-"30") dans l'API
- ⚠️ Mise à jour **complète** requise (pas de PATCH partiel)

### ⚙️ Tâches en arrière-plan

Le système de notifications utilise **WorkManager** pour exécuter des tâches périodiques :

**Flux d'exécution** :
1. Chargement des credentials (FlutterSecureStorage)
2. Création du client API (PersistCookieJar)
3. Récupération des données du poêle
4. Auto-reauthentification si session expirée
5. Snapshot des champs surveillés
6. Comparaison avec le snapshot précédent
7. Détection des changements + vérification des seuils
8. Envoi de notifications locales
9. Sauvegarde du nouveau snapshot

**Contraintes** :
- Exécution dans un **isolate séparé** (pas d'accès au contexte app)
- Intervalle minimum : 15 minutes (contrainte WorkManager)
- Respect du Doze mode Android (délais possibles)

---

## 🚀 Installation et configuration

### ✅ Prérequis

- **Flutter** : 3.38.2 ou supérieur
- **Dart** : 3.10.0 ou supérieur
- **Environnement de développement** :
  - Android Studio (pour Android)
  - Xcode (pour iOS, nécessite macOS)
  - Outils de développement Linux (pour Linux)
- **Compte Rika Firenet** : [https://www.rika-firenet.com](https://www.rika-firenet.com)

### 📥 Installation

```bash
# Cloner le repository
git clone https://github.com/R-Gld/FirenetUnofficialApp.git
cd FirenetUnofficialApp

# Installer les dépendances
flutter pub get

# Générer les fichiers de code (Freezed, JSON)
flutter pub run build_runner build --delete-conflicting-outputs

# Lancer l'application (développement)
flutter run
```

### 🏗️ Build pour production

```bash
# Android APK (debug)
flutter build apk

# Android APK (release)
flutter build apk --release

# Android App Bundle pour Play Store
flutter build appbundle --release

# iOS (nécessite macOS et Xcode)
flutter build ios --release

# Linux
flutter build linux --release

# macOS
flutter build macos --release
```

---

## 📱 Utilisation

### 🔐 Première connexion

1. **Ouvrir l'application**
2. **Entrer vos identifiants Rika Firenet** :
   - Email
   - Mot de passe
3. **Détection automatique** : L'application découvre tous vos poêles
4. **Navigation automatique** : Si un seul poêle, navigation directe vers l'écran de contrôle

### 🎛️ Contrôler le poêle

- **Allumer/Éteindre** : Bouton toggle avec dialogue de confirmation
- **Température** : Slider de 16°C à 30°C (mode Confort)
- **Puissance** : Slider de 0% à 100% (mode Manuel)
- **Mode** : Sélecteur Manuel / Auto / Confort
- **Rafraîchir** : Pull-to-refresh pour actualiser les données

> Les changements peuvent prendre 10-20 secondes pour être confirmés par le poêle.

### 🔔 Activer les notifications

1. **Paramètres** → **Notifications en arrière-plan**
2. **Activer le toggle** (permission Android demandée si nécessaire)
3. **Choisir l'intervalle** : 15, 30, 45 ou 60 minutes
4. **Sélectionner les champs à surveiller** :
   - Par catégorie : Status, Températures, Sécurité, Moteurs, Consommation
   - 23 champs prioritaires disponibles
5. **Optionnel** : Configurer des seuils pour les champs numériques
   - Exemple : "Température ambiante > 25°C"
6. **Tester** : Bouton "Tester maintenant" pour vérifier la configuration

### 🎨 Personnaliser l'interface

**Contrôles avancés** :
1. **Paramètres** → **Contrôles avancés**
2. Activer/désactiver selon vos besoins :
   - Mode ECO
   - Demande puissance pièce
   - Ventilateurs de convection
   - Protection anti-gel
   - Calibration température
   - Température four

**Panneaux d'information** :
1. **Paramètres** → **Panneaux d'information**
2. Choisir les panneaux à afficher :
   - Erreurs et avertissements
   - Statut sécurité
   - Capteurs
   - Sorties
   - Statistiques

---

## ⚙️ Configuration

### 🔑 Permissions Android

Permissions requises dans `AndroidManifest.xml` :

- `INTERNET` : Communication avec l'API Rika Firenet
- `POST_NOTIFICATIONS` : Notifications locales (Android 13+)
- `WAKE_LOCK` : Maintien actif pour tâches en arrière-plan
- `RECEIVE_BOOT_COMPLETED` : Redémarrage des tâches après reboot
- `VIBRATE` : Vibration lors des notifications

### 💾 Stockage

| Type de données | Méthode de stockage | Chiffrement |
|----------------|---------------------|-------------|
| Credentials (email/password) | FlutterSecureStorage | ✅ Oui |
| Session cookies | PersistCookieJar | ⚠️ Non |
| Paramètres d'application | SharedPreferences | ⚠️ Non |
| Snapshots notifications | SharedPreferences | ⚠️ Non |

---

## 🔧 Développement

### 🛠️ Commandes utiles

```bash
# Analyse statique du code
flutter analyze

# Formater le code
flutter format lib/ test/

# Lancer les tests
flutter test

# Tests avec coverage
flutter test --coverage

# Nettoyer le build
flutter clean && flutter pub get

# Générer les icônes d'application
flutter pub run flutter_launcher_icons
```

### 🏗️ Code generation (Freezed)

```bash
# Build unique (après modification de modèles)
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (régénération automatique)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 📝 Structure des commits

- Historique Git propre et lisible
- Messages de commit descriptifs en français
- Branches feature pour nouveaux développements
- Pull requests pour intégration

---

## 🛡️ Sécurité

### ✅ Bonnes pratiques implémentées

- ✅ **Credentials chiffrés** au repos (FlutterSecureStorage)
- ✅ **Pas de stockage plaintext** des mots de passe
- ✅ **HTTPS forcé** : Upgrade automatique HTTP → HTTPS
- ✅ **Session cookies sécurisés** avec persistence
- ✅ **Auto-logout** avec dialogue de confirmation
- ✅ **Gestion des erreurs** d'authentification
- ✅ **Notification** si reauthentification échoue en arrière-plan

### ⚠️ Considérations

- API **non officielle** (pas de support RIKA)
- Utilisation **à vos propres risques**
- **Testez** les contrôles critiques (allumage/extinction)
- Ne comptez **pas uniquement** sur cette app pour la sécurité de votre installation

---

## 🐛 Problèmes connus et limitations

### 🌐 Limitations API Rika

- **Polling requis** : Pas de websocket, confirmation par polling (10 × 2s)
- **Délai de confirmation** : 10-20 secondes pour voir les changements appliqués
- **Session cookies** : Peuvent expirer (auto-renewal implémenté)
- **Format température** : Températures DOIVENT être des strings dans l'API

### 📱 Limitations plateforme

- **Notifications en arrière-plan** : Android uniquement (pas iOS/Linux)
- **Doze mode** : WorkManager respecte les optimisations Android (délais possibles)
- **Intervalle minimum** : 15 minutes (contrainte WorkManager)

### 🚧 TODOs potentiels

- [ ] Historique graphique des températures
- [ ] Logs d'événements détaillés
- [ ] Widgets Android/iOS pour écran d'accueil
- [ ] Deep linking depuis les notifications
- [ ] Export des données en CSV
- [ ] Mode hors ligne avec cache

---

## 🤝 Contribution

Ce projet est **open source**. Les contributions sont les bienvenues !

### Comment contribuer

1. **Fork** le repository
2. **Créer une branche** feature
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **Commit** les changements
   ```bash
   git commit -m 'Add AmazingFeature'
   ```
4. **Push** vers la branche
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **Ouvrir une Pull Request**

### Guidelines

- Suivre les **conventions Flutter/Dart**
- Utiliser `flutter analyze` avant de commit
- Ajouter des **tests** si applicable
- **Documenter** les nouvelles fonctionnalités
- Messages de commit en **français**

---

## 📄 License

Ce projet est distribué sous la licence **MIT**. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

## 👨‍💻 Auteur

**[@R-Gld](https://github.com/R-Gld)**

---

## 🙏 Remerciements

- **RIKA** pour leurs excellents poêles à granulés et à bois
- La **communauté Flutter** pour l'écosystème riche et les packages
- Tous les **contributeurs** et **testeurs** de l'application

---

## ⚖️ Disclaimer

> **IMPORTANT** : Cette application n'est **PAS officielle** et n'est **PAS affiliée** à RIKA ou à ses filiales. Elle utilise l'interface web Rika Firenet de manière non documentée et non supportée.

### ⚠️ Avertissements

- **Utilisation à vos propres risques**
- **Aucune garantie** de fonctionnement continu
- L'API peut **changer sans préavis**
- **Testez toujours** les commandes critiques (allumage/extinction)
- Ne comptez **pas uniquement** sur cette application pour la sécurité de votre installation
- RIKA n'est **pas responsable** des dommages causés par l'utilisation de cette application

### 📞 En cas de problème

En cas de dysfonctionnement de votre poêle :
1. **Utilisez l'interface officielle** Rika Firenet
2. **Contactez le support** RIKA
3. **Ne modifiez pas** les paramètres critiques sans connaissance technique

---

## 📞 Support

- **Issues GitHub** : [https://github.com/R-Gld/FirenetUnofficialApp/issues](https://github.com/R-Gld/FirenetUnofficialApp/issues)
- **Discussions** : [https://github.com/R-Gld/FirenetUnofficialApp/discussions](https://github.com/R-Gld/FirenetUnofficialApp/discussions)

---

## 🔗 Liens utiles

- [Site officiel RIKA](https://www.rika.at/)
- [Rika Firenet (interface web)](https://www.rika-firenet.com/)
- [Documentation Flutter](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [WorkManager Plugin](https://pub.dev/packages/workmanager)
- [Flutter Local Notifications](https://pub.dev/packages/flutter_local_notifications)

---

<div align="center">

**Fait avec ❤️ pour la communauté des propriétaires de poêles Rika**

</div>
