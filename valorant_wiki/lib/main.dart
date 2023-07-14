import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_wiki/app/app.dart';
import 'package:flutter/material.dart';
import 'package:valorant_wiki/core/init/bloc/bloc_list.dart';
import 'package:valorant_wiki/core/init/configuration/configuration.dart';

void main() async {
  await appConfiguration();
  runApp(
    MultiBlocProvider(
      providers: [...BlocList.instance.items],
      child: ValorantWiki(),
    ),
  );
}
