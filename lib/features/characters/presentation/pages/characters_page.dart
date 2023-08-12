import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/pages/character_screen.dart';
import 'package:rick_and_morty_ddd/features/characters/domain/entities/character_lite_entity.dart';
import 'package:rick_and_morty_ddd/features/characters/presentation/widgets/character_list_item.dart';
import 'package:rick_and_morty_ddd/features/characters/providers.dart';
import 'package:rick_and_morty_ddd/features/common/presentation/widgets/app_error.dart';

final _searchBarStatus = StateProvider<bool>((ref) => false);
final _searchEditingController = Provider.autoDispose<TextEditingController>(
    (ref) => TextEditingController());

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
      appBar: const TitleBar(),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          characters.maybeWhen(
            data: (items) => ItemsListBuilder(items: items),
            onGoingLoading: (items) => ItemsListBuilder(items: items),
            noMoreData: (items) => ItemsListBuilder(items: items),
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
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: characters.maybeWhen(
                noMoreData: (items) => Text("No more data"),
                onGoingLoading: (items) => const SizedBox(),
                onGoingError: (items, e, stk) => const SizedBox(),
                orElse: () => const SizedBox(),
              ),
            ),
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

class TitleBar extends ConsumerWidget implements PreferredSizeWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarStatusProvider_r = ref.read(_searchBarStatus.notifier);
    final searchBarStatusProvider_w = ref.watch(_searchBarStatus);

    final searchEditingController = ref.watch(_searchEditingController);
    final FocusNode searchEditingFocus = FocusNode();

    final charactersController =
        ref.read(characterListControllerProvider.notifier);

    return AppBar(
      title: searchBarStatusProvider_w
          ? Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  controller: searchEditingController,
                  focusNode: searchEditingFocus,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        searchEditingController.clear();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) {
                    charactersController.searchBy(value);
                  },
                ),
              ),
            )
          : Text("Characters List"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            searchBarStatusProvider_r.state = !searchBarStatusProvider_r.state;
            searchEditingFocus.requestFocus();
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
