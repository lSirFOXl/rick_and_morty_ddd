import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/widgets/character_list_item.dart';
import 'package:rick_and_morty_ddd/features/characters/providers.dart';
import 'package:rick_and_morty_ddd/features/common/presentation/widgets/app_error.dart';

class CharactersPage extends ConsumerWidget {
  const CharactersPage({super.key});

  static const routeName = 'characters';
  static const routePath = 'characters';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characters = ref.watch(characterListControllerProvider);
    final scrollController = ScrollController();

    void setupScrollController(BuildContext context) {
      scrollController.addListener(() {
        if (scrollController.position.atEdge) {
          if (scrollController.position.pixels != 0) {}
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Characters',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            characters.when(
              data: (items) => Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    controller: scrollController,
                    itemBuilder: (context, index) => CharacterListItemWidget(
                        character: items.results[index]),
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.grey[400],
                      );
                    },
                    itemCount: items.results.length,
                    shrinkWrap: true,
                  ),
                ),
              ),
              error: (o, e) => AppError(
                title: o.toString(),
              ),
              loading: () => CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
