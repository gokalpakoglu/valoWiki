import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:valorant_wiki/app/view/home/view/widgets/drawer_widget.dart';
import 'package:valorant_wiki/app/view/weapons/view/widgets/index.dart';

@RoutePage()
class WeaponsView extends StatelessWidget {
  const WeaponsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: BodyWidget(),
    );
  }
}
