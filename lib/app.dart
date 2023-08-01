import 'dart:developer';

import 'package:rick_and_morty_ddd/configs/app_configs.dart';
import 'package:rick_and_morty_ddd/configs/router.dart';
import 'package:rick_and_morty_ddd/configs/theme.dart';
import 'package:rick_and_morty_ddd/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

/// Main example app class
class ExampleApp extends StatelessWidget {
  /// Default constructor for Example app
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppConfigs().loadConfigs();
    usePathUrlStrategy();
    return MaterialApp.router(
      title: F.title,
      theme: AppTheme(Brightness.light).themeData,
      darkTheme: AppTheme(Brightness.dark).themeData,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
