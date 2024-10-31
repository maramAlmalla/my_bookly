import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_Seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellersListViewItems(),
        );
      },
    );
  }
}
