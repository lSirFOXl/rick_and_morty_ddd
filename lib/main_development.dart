import 'package:rick_and_morty_ddd/app.dart';
import 'package:rick_and_morty_ddd/bootstrap.dart';
import 'package:rick_and_morty_ddd/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  F.appFlavor = Flavor.development;
  runApp(
    UncontrolledProviderScope(
      container: await bootstrap(),
      child: const ExampleApp(),
    ),
  );
}
