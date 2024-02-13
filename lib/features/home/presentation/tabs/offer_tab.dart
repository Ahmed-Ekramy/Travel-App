import 'package:flutter/material.dart';
import '../widgets/custom_offer_tab.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            child: Image.asset(
          "assets/images/fly.jpg",
          width: double.infinity,
        )),
        const CustomOfferTab(),
      ],
    );
  }
}

