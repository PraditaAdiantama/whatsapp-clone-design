# whatsapp_clone_design
Learning project by creating Whatsapp clone design using flutter

# Folder Structure
```
lib/
│
├── core/                  # Global configurations and utilities
│   ├── constants/         # App-wide constants (colors, strings, etc.)
│   ├── utils/             # Reusable helper functions
│   ├── themes/            # App themes (light/dark)
│   └── services/          # Core services (e.g. API, storage, logging)
│
├── data/                  # Data layer
│   ├── models/            # Data models
│   ├── repositories/      # Data access and business logic
│   └── datasources/       # API/local DB implementations
│
├── features/              # Feature-based structure (modular and scalable)
│   ├── auth/              # One feature (example: Authentication)
│   │   ├── presentation/  # UI: screens, widgets
│   │   ├── application/   # Use cases / business logic
│   │   └── domain/        # Models and interfaces (optional DDD)
│   └── home/              # Another feature module
│
├── common/                # Shared widgets and components
│   ├── widgets/           # Shared UI widgets
│   └── extensions/        # Dart or widget extensions
│
└── main.dart               # App root: router + MaterialApp

```