import 'package:flutter/material.dart';

import '../../../../core/theming/text_style.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    super.key, required this.text1,
  });
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
          text1,
            textAlign: TextAlign.center,
            style: readexPro16w700(),
          ),
          Text(
            'Show all',
            textAlign: TextAlign.center,
            style: readexPro12w400(),
          ),
        ],
      ),
    );
  }
}