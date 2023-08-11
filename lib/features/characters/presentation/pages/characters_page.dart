import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/pages/character_screen.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
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
    final charactersController =
        ref.read(characterListControllerProvider.notifier);
    final scrollController = ScrollController();

    scrollController.addListener(() {
      double maxScroll = scrollController.position.maxScrollExtent;
      double currentScroll = scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.width * 0.20;
      if (maxScroll - currentScroll <= delta) {
        charactersController.getCharactersNext();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Characters',
        ),
      ),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          characters.maybeWhen(
            data: (items) => ItemsListBuilder(items: items),
            onGoingLoading: (items) {
              return ItemsListBuilder(
                items: items,
              );
            },
            error: (o, e) => SliverToBoxAdapter(
              child: AppError(
                title: o.toString(),
              ),
            ),
            loading: () => const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            orElse: () => const SliverToBoxAdapter(),
          ),
          characters.maybeWhen(
            onGoingLoading: (items) => const SliverToBoxAdapter(),
            onGoingError: (items, e, stk) => const SliverToBoxAdapter(),
            orElse: () => const SliverToBoxAdapter(),
          )
        ],
      ),
    );
  }
}

class ItemsListBuilder extends ConsumerWidget {
  const ItemsListBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<CharacterLiteEntity> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var liteCharacter = items[index];
          return GestureDetector(
            onTap: () => context.goNamed(
              CharacterScreen.routeName,
              pathParameters: {'cid': liteCharacter.id.toString()},
            ),
            child: CharacterListItemWidget(character: liteCharacter),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
