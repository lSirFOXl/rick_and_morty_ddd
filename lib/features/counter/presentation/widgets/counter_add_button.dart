import 'package:rick_and_morty_ddd/features/counter/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterAddButtonWidget extends ConsumerWidget {
  const CounterAddButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      tooltip: 'Increment',
      onPressed: () {
        ref.read(counterControllerProvider.notifier).addOne();
      },
      child: const Icon(Icons.add),
    );
  }
}
