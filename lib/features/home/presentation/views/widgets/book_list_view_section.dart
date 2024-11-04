import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_list_view.dart';

class BookListViewSection extends StatelessWidget {
  const BookListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like :',
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomBooksListView(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
