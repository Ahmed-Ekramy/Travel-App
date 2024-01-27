import 'package:flutter/material.dart';

class ListViewOffer extends StatelessWidget {
  const ListViewOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemBuilder:(context, index) =>      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 270,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image:AssetImage("assets/images/Group sky.png"),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 0.20, color: Color(0xFFACACAC)),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ),itemCount: 5, ),
    );
  }
}
