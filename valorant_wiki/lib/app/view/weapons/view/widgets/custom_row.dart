import 'package:flutter/material.dart';
import 'package:valorant_wiki/core/extensions/context_extension.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.data,
    required this.index,
    required this.title,
    required this.information,
  });

  final List data;
  final int index;
  final String title;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.headlineMedium,
        ),
        Text(
          information,
          maxLines: 15,
          style: context.textTheme.headlineMedium,
        ),
      ],
    );
  }
}
