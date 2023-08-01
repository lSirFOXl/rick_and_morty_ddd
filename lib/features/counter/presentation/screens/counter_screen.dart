import 'package:rick_and_morty_ddd/features/counter/presentation/widgets/counter_add_button.dart';
import 'package:rick_and_morty_ddd/features/counter/presentation/widgets/counter_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const routeName = 'counter';
  static const routePath = 'counter';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Column(
          children: [Text("Counter is:"), CounterNumberWidget()],
        ),
      ),
      floatingActionButton: CounterAddButtonWidget(),
    );
  }
}
