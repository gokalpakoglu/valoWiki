import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:valorant_wiki/app/view/weapons/service/weapons_service.dart';
import 'package:valorant_wiki/app/view/weapons/view/widgets/index.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class WeaponsCard extends StatelessWidget {
  const WeaponsCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    WeaponsService service = WeaponsService(baseUrl: AppEndpoints.baseUrl);
    return FutureBuilder(
      future: service.getWeapons(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List data = snapshot.data?.data ?? [];
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
                        child: Padding(
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
                                        data[index].displayIcon ?? '',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Padding(
                                      padding: context.verticalPaddingMedium,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Weapon Information",
                                          style:
                                              context.textTheme.headlineMedium,
                                        ),
                                      ),
                                    ),
                                    CustomRow(
                                        data: data,
                                        index: index,
                                        title: 'Name',
                                        information:
                                            data[index].displayName ?? ''),
                                    CustomRow(
                                        data: data,
                                        index: index,
                                        title: 'Category',
                                        information:
                                            data[index].shopData.categoryText ??
                                                ''),
                                    CustomRow(
                                        data: data,
                                        index: index,
                                        title: 'Cost',
                                        information: data[index]
                                            .shopData
                                            .cost
                                            .toString()),
                                    CustomRow(
                                        data: data,
                                        index: index,
                                        title: 'Grid Position',
                                        information:
                                            "Row: ${data[index].shopData.gridPosition.row} Column: ${data[index].shopData.gridPosition.column}"),
                                    Padding(
                                      padding: context.verticalPaddingMedium,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Weapon Skins",
                                          style:
                                              context.textTheme.headlineMedium,
                                        ),
                                      ),
                                    ),
                                    for (var i = 0;
                                        i < data[index].skins.length;
                                        i++)
                                      SizedBox(
                                          height: context.height * 0.3,
                                          width: context.width,
                                          child: CustomSkinsCard(
                                            data: data,
                                            index: index,
                                            i: i,
                                          ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
            },
            child: CustomWeaponCard(
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
