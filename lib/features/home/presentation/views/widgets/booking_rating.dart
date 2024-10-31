import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFD700),
        ),
        SizedBox(
          width: 9,
        ),
        Text(
          '4.8',
          style: Styles.textstyle16,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '(2456)',
          style: Styles.textstyle14,
        )
      ],
    );
  }
}