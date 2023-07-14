import 'package:flutter/material.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.data,
    required this.index,
  });

  final List data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              context.theme.primaryColor,
              context.theme.secondaryHeaderColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              data[index].displayIcon.toString(),
              height: context.height * 0.15,
              width: context.width ,
            ),
            Text(
              data[index].displayName.toString(),
              style: context.textTheme.titleMedium,
            ),
            // Text(data[index].role.displayName.toString(),
            //     style: context.textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
