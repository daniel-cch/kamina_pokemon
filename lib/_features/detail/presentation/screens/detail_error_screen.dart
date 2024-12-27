import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamina_pokemon/_features/detail/detail.dart';
import 'package:kamina_pokemon/core/app_router/app_router.dart';
import 'package:kamina_pokemon/design_system/design_system.dart';

class DetailErrorScreen extends StatelessWidget {
  const DetailErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.l,
        children: [
          const AppText(text: DetailTexts.error),
          AppIconButtonExternal(
            description: DetailTexts.tryAgain,
            onPressed: () {
              BlocProvider.of<DetailBloc>(context).add(
                DetailInitEvent(
                  id: (context.routeData.args as DetailRouteArgs).id,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
