import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:rick_and_morty_ddd/flavors.dart';

class AppConfigs {
  String apiUrl = "NO";

  static AppConfigs? _instance;

  AppConfigs._();

  factory AppConfigs() => _instance ??= AppConfigs._();

  loadConfigs() {
    var contents =
        new File('assets/config/${F.envFileName}').readAsStringSync();
    final json = jsonDecode(contents);
    apiUrl = json['apiUrl'];
  }
}
