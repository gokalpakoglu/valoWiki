import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import 'package:valorant_wiki/app/view/app_settings/bloc/app_settings_bloc.dart';
import 'package:valorant_wiki/app/view/app_settings/repository/app_settings_repostiory.dart';
import 'package:valorant_wiki/app/view/bottom_navbar/bloc/bottom_navbar_bloc.dart';




class BlocList {
  static BlocList? _instance;
  BlocList._();
  static BlocList get instance {
    _instance ??= BlocList._();
    return _instance!;
  }

  List<SingleChildWidget> items = [
    BlocProvider<BottomNavbarBloc>(create: (context) => BottomNavbarBloc()),
    BlocProvider<AppSettingsBloc>(
      create: (context) => AppSettingsBloc(
        themeData: selectedTheme[0],
        selectedThemeButton: selectedTheme[1],
        locale: selectedLanguage[0],
        selectedLanguageButton: selectedLanguage[1],       
      ),
    ),
    
    //BlocProvider<SplashBloc>(create: (context) => SplashBloc()..add(SplashInitialEvent())),
    
  ];
}