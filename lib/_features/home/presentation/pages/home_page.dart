import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>.value(
      value: BlocProvider.of<HomeBloc>(context)..add(HomeInitEvent()),
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Theme.of(context).brightness,
          ),
          backgroundColor: AppColors.transparent,
          title: AppText(
            text: HomeTexts.homeTitle,
            style: AppTypography.heading(),
          ),
        ),
        body: HomeView(),
      ),
    );
  }
}
