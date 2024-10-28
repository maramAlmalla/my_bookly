import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/Featured_List_view_items.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_Seller_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'BOOKLY', icon: FontAwesomeIcons.magnifyingGlass),
          FeaturedBooksListItems(),
          Text(
            'Best Sellers',
            style: Styles.titleMedium,
          ),
          BestSellersListViewItems(),
        ],
      ),
    );
  }
}
