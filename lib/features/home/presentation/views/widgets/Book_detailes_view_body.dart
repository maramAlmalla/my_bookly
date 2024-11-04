import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_action.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_detailles_section.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/book_list_view_section.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/booking_rating.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_detailes_app_bar.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_book_list_view.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SafeArea(child: CustomBookDetailesAppBar()),
                  BookDetaillsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 24,
                    ),
                  ),
                  BookListViewSection()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
