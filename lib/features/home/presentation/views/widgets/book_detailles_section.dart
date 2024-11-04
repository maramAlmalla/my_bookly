import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class BookDetaillsSection extends StatelessWidget {
  const BookDetaillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text('IT Ends with Us',
            style: Styles.textstyle22,
            maxLines: 2,
            overflow: TextOverflow.ellipsis),
        const SizedBox(
          height: 3,
        ),
        const Text(
          'auther name',
          style: Styles.textstyle16,
        ),
        const SizedBox(
          height: 6,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 13,
        ),
        const BookAction(),
      ],
    );
  }
}
