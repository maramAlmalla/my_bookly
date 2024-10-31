import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class FeaturedBooksListItems extends StatelessWidget {
  const FeaturedBooksListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: CustomBookItem(),
            );
          }),
    );
  }
}
