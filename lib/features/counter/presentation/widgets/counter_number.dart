import 'package:rick_and_morty_ddd/features/counter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNumberWidget extends ConsumerWidget {
  const CounterNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterControllerProvider);
    return Text("$count");
  }
}
