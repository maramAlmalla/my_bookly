import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/best_Seller_list_view_item.dart';
import 'package:my_bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Resaults ',
            style: Styles.titleMedium,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchListViewResaults()),
        ],
      ),
    );
  }
}

class SearchListViewResaults extends StatelessWidget {
  const SearchListViewResaults({super.key});

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
    ;
  }
}
