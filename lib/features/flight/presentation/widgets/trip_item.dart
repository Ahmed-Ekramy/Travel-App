import 'package:flutter/material.dart';

import '../../../../core/theming/text_style.dart';


class TripItems extends StatelessWidget {
  const TripItems({ required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: readexPro16w700(),
          ),
          SizedBox(
            width: 100,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '.......',
                  hintStyle: readexPro16w700()
              ),
            ),
          ),
        ],
      ),
    );
  }
}