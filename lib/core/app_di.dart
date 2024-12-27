import 'package:get_it/get_it.dart';
import 'package:hive_ce/hive.dart';
import 'package:kamina_pokemon/_features/detail/data/repositories/repositories.dart';
import 'package:kamina_pokemon/_features/detail/domain/repositories/repositories.dart';
import 'package:kamina_pokemon/_features/detail/presentation/bloc/bloc.dart';
import 'package:kamina_pokemon/_features/home/data/repositories/repositories.dart';
import 'package:kamina_pokemon/_features/home/data/services/services.dart';
import 'package:kamina_pokemon/_features/home/domain/repositories/repositories.dart';
import 'package:kamina_pokemon/_features/home/domain/services/services.dart';
import 'package:kamina_pokemon/_features/home/presentation/bloc/bloc.dart';
import 'package:kamina_pokemon/core/core.dart';

class AppDi {
  static final instance = GetIt.instance;

  static void setup() {
    // Core bindings
    instance.registerLazySingleton<AppHttpBase>(AppHttpService.new);
    instance.registerLazySingleton<HiveInterface>(() => Hive);

    // Home Bindings
    instance.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(instance<AppHttpBase>()),
    );
    instance.registerFactory<HomeStorageService>(
      () => HomeStorageServiceImpl(instance<HiveInterface>()),
    );
    instance.registerFactory<HomeBloc>(
      () => HomeBloc(
        instance<HomeRepository>(),
        instance<HomeStorageService>(),
      ),
    );

    // Detail Bindings
    instance.registerFactory<DetailRepository>(
      () => DetailRepositoryImpl(instance<AppHttpBase>()),
    );
    instance.registerFactory<DetailBloc>(
      () => DetailBloc(instance<DetailRepository>()),
    );
  }
}
