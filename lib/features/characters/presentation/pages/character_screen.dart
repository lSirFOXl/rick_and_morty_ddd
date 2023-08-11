import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/widgets/character_status_vidget.dart';
import 'package:rick_and_morty_ddd/features/characters/providers.dart';
import 'package:rick_and_morty_ddd/features/common/presentation/widgets/app_error.dart';

class CharacterScreen extends ConsumerWidget {
  const CharacterScreen({super.key, required this.id});

  final int id;

  static const routeName = 'character';
  static const routePath = 'character';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final character = ref.watch(characterControllerProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: character.when(
          data: (item) => Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 166,
                  height: 166,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("${item.name}"),
                      Text("Sex: ${item.gender}"),
                      Text("Location: ${item.location.name}"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CharacterStatusWidget(
                            status: item.status,
                          ),
                          Text(" - "),
                          Text("${item.species}"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          error: (o, e) => AppError(
            title: o.toString(),
          ),
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
