import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_list_view.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
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
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const BookAction(),
                  const Expanded(
                    child: SizedBox(
                      height: 24,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'You can also like :',
                      style: Styles.textstyle16
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomBooksListView(),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
