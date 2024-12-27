import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AppTextInput(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: (value) {
        BlocProvider.of<HomeBloc>(context).add(HomeFilterEvent(filter: value));
      },
      onTapOutside: (_) {
        _focusNode.unfocus();
      },
      hintText: HomeTexts.searchHint,
      icon: Icon(
        Icons.search,
        color: AppColors.darkText,
      ),
    );
  }
}
