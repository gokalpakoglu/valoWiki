import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_wiki/app/view/app_settings/bloc/app_settings_bloc.dart';
import 'package:valorant_wiki/core/init/navigation/app_router.dart';

class ValorantWiki extends StatelessWidget{
  final _appRouter = AppRouter();

   ValorantWiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BlocBuilder<AppSettingsBloc, AppSettingsState>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: state.themeData,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          locale: state.locale,
          //localizationsDelegates: AppLocalizations.localizationsDelegates,
          //supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}