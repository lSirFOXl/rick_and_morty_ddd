import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

///
class CounterController extends StateNotifier<num> {
  ///
  CounterController() : super(0);

  /// Add an entity to list
  void addOne() {
    state += 1;
    log(state.toString());
  }
}
