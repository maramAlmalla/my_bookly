import 'package:flutter/material.dart';
import 'package:my_bookly/core/assets.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.28 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black,
            image: const DecorationImage(
              image: AssetImage(AssetsData.book1),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
