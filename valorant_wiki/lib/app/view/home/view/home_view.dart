import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:valorant_wiki/app/view/home/view/widgets/index.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: BodyWidget(),
    );
  }
}
