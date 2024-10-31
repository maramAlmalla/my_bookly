import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/Featured_List_view_items.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SafeArea(child: CustomBookDetailesAppBar()),
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
            )
          ],
        ),
      ),
    );
  }
}
