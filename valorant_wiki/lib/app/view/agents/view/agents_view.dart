import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:valorant_wiki/app/view/agents/view/widgets/index.dart';
import 'package:valorant_wiki/app/view/home/view/widgets/drawer_widget.dart';

@RoutePage()
class AgentsView extends StatelessWidget {
  const AgentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: BodyWidget(),
    );
  }
}
