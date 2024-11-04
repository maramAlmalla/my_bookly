import 'package:flutter/material.dart';
import 'package:my_bookly/core/widgets/custom_book_detailes_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
            child: CustomBookDetailesButton(
              text: '19.33 \$',
              backgroundColor: Color(0xffF6E9A7),
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomBookDetailesButton(
              text: 'Free Preview',
              backgroundColor: Color(0xffF5653A),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }
}
