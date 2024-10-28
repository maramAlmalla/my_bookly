import 'package:flutter/material.dart';
import 'package:my_bookly/core/assets.dart';

class BestSellersListViewItems extends StatelessWidget {
  const BestSellersListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black,
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.book1),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          const Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
