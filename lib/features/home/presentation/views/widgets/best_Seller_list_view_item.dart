import 'package:flutter/material.dart';
import 'package:my_bookly/core/assets.dart';
import 'package:my_bookly/core/styles.dart';

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
          const SizedBox(width: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text('IT Ends with Us',
                    style: Styles.textstyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'auther name',
                style: Styles.textstyle14,
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    'price \$',
                    style: Styles.textstyle16,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
