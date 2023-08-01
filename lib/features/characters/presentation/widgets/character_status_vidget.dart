import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterStatusWidget extends ConsumerWidget {
  final String status;

  const CharacterStatusWidget({
    super.key,
    required this.status,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color circleColor = Colors.greenAccent;
    if (this.status == "unknown") {
      circleColor = Colors.grey;
    } else if (this.status == "Dead") {
      circleColor = Colors.red;
    }

    return Row(
      children: [
        Container(
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            color: circleColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(this.status)
      ],
    );
  }
}
