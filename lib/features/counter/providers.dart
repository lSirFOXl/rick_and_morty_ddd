import 'package:rick_and_morty_ddd/features/counter/controllers/counter_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterControllerProvider =
    StateNotifierProvider<CounterController, num>((ref) {
  return CounterController();
});
