import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/_features/home/home.dart';
import 'package:kamina_pokemon/core/core.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>.value(
          value: BlocProvider.of<HomeBloc>(context),
        ),
        BlocProvider<DetailBloc>(
          create: (_) => AppDi.instance.get<DetailBloc>()
            ..add(
              DetailInitEvent(id: id),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Theme.of(context).brightness,
          ),
          backgroundColor: AppColors.transparent,
        ),
        body: DetailView(),
      ),
    );
  }
}
