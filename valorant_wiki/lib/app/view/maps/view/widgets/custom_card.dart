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
      elevation: context.lowValue,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(data[index].splash ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: context.paddingLow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data[index].displayName ?? '',
                    style: context.textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
