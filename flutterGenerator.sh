#!/usr/bin/env bash

fileName=$1
featureFolder=lib/features/"$fileName"
screenFolder=lib/screens/"$fileName"

# FEATURES FOLDER
mkdir -p "$featureFolder"/{models,notifiers,providers,services}
mkdir -p "$screenFolder"/{views,widgets}
touch "$featureFolder"/"$fileName""_features.dart"
touch "$screenFolder"/"$fileName.dart"

cat > "$featureFolder"/"$fileName""_features.dart" <<EOF
 export 'models/models.dart';
 export 'notifiers/notifiers.dart';
 export 'providers/providers.dart';
 export 'services/services.dart';
EOF

# models
touch "$featureFolder"/models/"$fileName""_model.dart" "$featureFolder"/models/models.dart
cat > "$featureFolder"/models/models.dart <<EOF
 export '${fileName}_model.dart';
EOF

# notifiers
touch "$featureFolder"/notifiers/"$fileName""_notifier.dart" "$featureFolder"/notifiers/notifiers.dart
cat > "$featureFolder"/notifiers/notifiers.dart <<EOF
 export '${fileName}_notifier.dart';
EOF

# providers
touch "$featureFolder"/providers/"$fileName""_provider.dart" "$featureFolder"/providers/providers.dart
cat > "$featureFolder"/providers/providers.dart <<EOF
 export '${fileName}_provider.dart';
EOF

# services
touch "$featureFolder"/services/"$fileName""_service.dart" "$featureFolder"/services/services.dart
cat > "$featureFolder"/services/services.dart <<EOF
 export '${fileName}_service.dart';
EOF

# views
touch "$screenFolder"/views/"$fileName""_screen.dart" "$screenFolder"/views/views.dart
# widgets
touch "$screenFolder"/widgets/widgets.dart
