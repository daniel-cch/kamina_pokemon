import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:kamina_pokemon/_features/home/presentation/bloc/bloc.dart';
import 'package:kamina_pokemon/core/core.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

Future<void> main() async {
  await Hive.initFlutter();

  AppDi.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => AppDi.instance.get<HomeBloc>(),
      child: MaterialApp.router(
        title: 'Kamina Pokemon',
        theme: LightTheme.theme,
        darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.system,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
