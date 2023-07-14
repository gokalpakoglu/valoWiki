import 'package:flutter/material.dart';
import 'package:valorant_wiki/app/view/maps/service/maps_service.dart';
import 'package:valorant_wiki/app/view/maps/view/widgets/maps_card.dart';
import 'package:valorant_wiki/core/constants/app_endpoints.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapsService service = MapsService(baseUrl: AppEndpoints.baseUrl);
    return SingleChildScrollView(
        child: Padding(
            padding: context.paddingLow,
            child: Column(children: [
              SizedBox(height: context.height * 0.01),
              FutureBuilder(
                future: service.getMaps(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => MapsCard(index: index),
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
            ])));
  }
}
