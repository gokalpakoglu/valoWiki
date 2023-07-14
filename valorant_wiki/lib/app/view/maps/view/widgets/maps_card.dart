import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:valorant_wiki/app/view/maps/service/maps_service.dart';
import 'package:valorant_wiki/app/view/maps/view/widgets/custom_card.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class MapsCard extends StatelessWidget {
  const MapsCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    MapsService service = MapsService(baseUrl: AppEndpoints.baseUrl);
    return FutureBuilder(
      future: service.getMaps(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List data = snapshot.data?.data ?? [];
          return InkWell(
            onTap: () {
              data[index].displayName != "The Range"
                  ? showModalBottomSheet(
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
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Map Plan",
                                          style:
                                              context.textTheme.headlineMedium,
                                        ),
                                      ),
                                      Image.network(
                                        data[index].displayIcon ?? '',
                                        height: context.height * 0.3,
                                        width: context.width,
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Region Name",
                                          style: context.textTheme.titleLarge,
                                        ),
                                        subtitle: Text("Super Region Name",
                                            style:
                                                context.textTheme.titleLarge),
                                        trailing: Text("Location",
                                            style:
                                                context.textTheme.titleLarge),
                                      ),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              data[index].callouts.length ?? 0,
                                          itemBuilder: (context, i) => ListTile(
                                                title: Text(
                                                  data[index]
                                                          .callouts[i]
                                                          .regionName ??
                                                      '',
                                                  style: context
                                                      .textTheme.titleLarge,
                                                ),
                                                subtitle: Text(
                                                  data[index]
                                                          .callouts[i]
                                                          .superRegionName ??
                                                      '',
                                                  style: context
                                                      .textTheme.titleLarge,
                                                ),
                                                trailing: Column(
                                                  children: [
                                                    Text(
                                                      "X: ${data[index].callouts[i].location.x.toString()}",
                                                      style: context
                                                          .textTheme.titleLarge,
                                                    ),
                                                    Text(
                                                      "Y: ${data[index].callouts[i].location.y.toString()}",
                                                      style: context
                                                          .textTheme.titleLarge,
                                                    ),
                                                  ],
                                                ),
                                              ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))
                  : null;
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
}
