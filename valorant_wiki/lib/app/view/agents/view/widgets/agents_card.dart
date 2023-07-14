import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:valorant_wiki/app/view/agents/service/agents_service.dart';
import 'package:valorant_wiki/app/view/agents/view/widgets/custom_card.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class AgentsCard extends StatelessWidget {
  const AgentsCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAgentsListFromApi(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List data = snapshot.data ?? [];
          return InkWell(
            onTap: () {
              showModalBottomSheet(
                  useSafeArea: true,
                  backgroundColor: context.theme.cardColor,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) => SingleChildScrollView(
                        padding: context.paddingLow,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: context.horizontalPaddingHigh * 2,
                              child: Divider(
                                thickness: 3,
                                color: context.theme.secondaryHeaderColor,
                              ),
                            ),
                            Padding(
                              padding: context.paddingMedium,
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                runSpacing: context.mediumValue,
                                children: [
                                  Container(
                                    height: context.height * 0.3,
                                    width: context.width,
                                    color: Colors.red,
                                    child: Image.network(
                                      data[index].bustPortrait ?? '',
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.network(
                                        data[index].role?.displayIcon ?? '',
                                        height: context.height * 0.1,
                                        width: context.width * 0.1,
                                        color: context.theme.primaryColor,
                                      ),
                                      SizedBox(
                                        width: context.width * 0.1,
                                      ),
                                      Text(
                                        data[index].role?.displayName ?? '',
                                        style: context.textTheme.titleMedium,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    data[index].description ?? '',
                                    style: context.textTheme.titleLarge,
                                  ),
                                  Text("Abilities",
                                      style: context.textTheme.headlineMedium),
                                  for (var i = 0;
                                      i < data[index].abilities.length;
                                      i++)
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.network(
                                              data[index]
                                                  .abilities[i]
                                                  .displayIcon,
                                              height: context.height * 0.1,
                                              width: context.width * 0.1,
                                              color: context.theme.primaryColor,
                                            ),
                                            SizedBox(
                                              width: context.width * 0.1,
                                            ),
                                            Text(
                                              data[index]
                                                      .abilities[i]
                                                      .displayName ??
                                                  '',
                                              style:
                                                  context.textTheme.titleMedium,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          data[index]
                                                  .abilities[i]
                                                  .description ??
                                              '',
                                          style: context.textTheme.titleLarge,
                                        ),
                                      ],
                                    )
                                ],
                              ),
                            )
                          ],
                        ),
                      ));
            },
            child: CustomCard(
              data: data,
              index: index,
            ),
          );
        } else {
          return Shimmer.fromColors(
            enabled: true,
            baseColor: Colors.grey.shade300,
            highlightColor: context.theme.cardColor,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: context.theme.cardColor,
              ),
            ),
          );
        }
      },
    );
  }

  Future<List<dynamic>> getAgentsListFromApi() async {
    AgentsService service = AgentsService(baseUrl: AppEndpoints.baseUrl);
    List data = [];
    await service.getAgents().then((value) {
      data = value.data ?? [];
    });
    for (int i = 0; i < data.length; i++) {
      if (data[i].isPlayableCharacter != true) {
        data.removeAt(i);
      }
    }
    return data;
  }
}
