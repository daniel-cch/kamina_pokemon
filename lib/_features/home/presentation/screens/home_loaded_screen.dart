import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class HomeLoadedScreen extends StatefulWidget {
  const HomeLoadedScreen({super.key});

  @override
  State<HomeLoadedScreen> createState() => _HomeLoadedScreenState();
}

class _HomeLoadedScreenState extends State<HomeLoadedScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bloc = context.read<HomeBloc>();

    if (_isBottom &&
        bloc.state.canLoadMore &&
        bloc.state is! HomeLoadingMoreState) {
      bloc.add(HomeLoadMoreEvent());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) {
      return false;
    }

    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        List<Pokemon> list = state.pokemons;
        if (state.filter.isNotEmpty) {
          list = state.pokemons
              .where((e) => e.name.contains(state.filter))
              .toList();
        }

        return CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.l * 2,
                vertical: AppSpacing.m,
              ),
              sliver: PinnedHeaderSliver(
                child: SearchBarWidget(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.l * 2,
                vertical: AppSpacing.l,
              ),
              sliver: SliverList.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListCard(
                    pokemon: list[index],
                  );
                },
              ),
            ),
            if (state is HomeLoadingMoreState)
              SliverPadding(
                padding: EdgeInsets.only(bottom: AppSpacing.l * 2),
                sliver: SliverToBoxAdapter(
                  child: Center(
                    child: AppLoadingSpinner(size: 40),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
