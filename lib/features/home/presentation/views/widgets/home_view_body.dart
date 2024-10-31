import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/Custom_home-app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/Featured_List_view_items.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomHomeAppBar(
                    title: 'BOOKLY', icon: FontAwesomeIcons.magnifyingGlass),
              ),
              FeaturedBooksListItems(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Sellers',
                  style: Styles.titleMedium,
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
