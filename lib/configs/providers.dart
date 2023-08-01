import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

///
/// Infrastructure dependencies
///

/// Exposes [SharedPreferences] instance
final sharedPreferencesProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

///
/// Application dependencies
///

///
/// Presentation dependencies
///
///

/// Triggered from bootstrap() to complete futures
Future<void> initializeProviders(ProviderContainer container) async {
  /// Core
  await container.read(sharedPreferencesProvider.future);
}
