import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rick_and_morty_ddd/flavors.dart';

import 'configs/providers.dart' as providers;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Initializes services and controllers before the start of the application
Future<ProviderContainer> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer(
    overrides: [], //supabaseProvider.overrideWithValue(Supabase.instance)
    observers: [if (F.appFlavor == Flavor.local) _Logger()],
  );
  await providers.initializeProviders(container);

  await dotenv.load(fileName: '.env.${F.appFlavor?.name}');

  return container;
}

class _Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint(
      '''
      {
      "provider": "${provider.name ?? provider.runtimeType}",
      "newValue": "$newValue"
      }''',
    );
  }
}
