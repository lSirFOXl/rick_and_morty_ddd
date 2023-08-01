import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/widgets/character_status_vidget.dart';

class CharacterListItemWidget extends ConsumerWidget {
  final CharacterLiteEntity character;

  const CharacterListItemWidget({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 166,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12)),
              image: DecorationImage(
                image: NetworkImage(character.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${this.character.name}"),
                Text("Sex: ${this.character.gender}"),
                Row(
                  children: [
                    CharacterStatusWidget(
                      status: this.character.status,
                    ),
                    Text(" - "),
                    Text("${this.character.species}"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
