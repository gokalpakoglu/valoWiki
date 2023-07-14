import 'package:flutter/material.dart';
import 'package:valorant_wiki/app/view/agents/model/agents.dart';
import 'package:valorant_wiki/app/view/agents/service/agents_service.dart';
import 'package:valorant_wiki/app/view/agents/view/widgets/index.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AgentsService service = AgentsService(baseUrl: AppEndpoints.baseUrl);
    List icons = [];
    List roles = [];
    return SingleChildScrollView(
      child: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            iconsAndRoles(roles, icons),
            SizedBox(height: context.height * 0.01),
            FutureBuilder(
              future: service.getAgents(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: (snapshot.data?.data?.length)! - 1,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => AgentsCard(index: index),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error"),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  FutureBuilder<List<dynamic>> iconsAndRoles(
      List<dynamic> roles, List<dynamic> icons) {
    return FutureBuilder(
      future: fetchAgentsRoles(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          for (var i in snapshot.data?[0]) {
            roles.add(i);
          }
          for (var i in snapshot.data?[1]) {
            icons.add(i);
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: printRoles(roles, context, icons),
            ),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Error"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  List<Widget> printRoles(
      List<dynamic> roles, BuildContext context, List<dynamic> icons) {
    return [
      for (int i = 0; i < roles.length; i++)
        if (roles[i] != null)
          Padding(
            padding: context.paddingLow,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    icons[i].toString(),
                    height: context.height * 0.03,
                    width: context.width * 0.05,
                  ),
                  SizedBox(width: context.width * 0.03),
                  Text(
                    roles[i].toString(),
                    style: context.textTheme.bodyLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
    ];
  }

  Future<List> fetchAgentsRoles() async {
    List<String?> roles = [];
    List icons = [];
    final response =
        await AgentsService(baseUrl: AppEndpoints.baseUrl).getAgents();
    roles = response.data!.map((e) => e.role?.displayName).toSet().toList();
    icons = response.data!.map((e) => e.role?.displayIcon).toSet().toList();
    return [roles, icons];
  }

  listAgentsByRoles(String? role) async {
    final response =
        await AgentsService(baseUrl: AppEndpoints.baseUrl).getAgents();
    List<Data> filteredAgents = response.data!
        .where((element) => element.role?.displayName == role)
        .toList();
    return filteredAgents;
  }
}
