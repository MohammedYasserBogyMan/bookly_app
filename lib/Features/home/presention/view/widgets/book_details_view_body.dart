import 'package:bookl_app/Features/home/presention/view/widgets/book_action.dart';
import 'package:bookl_app/Features/home/presention/view/widgets/custom_list_view_item.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'bool_rating.dart';
import 'custom_appbar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const CustomAppBarBookDetails(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.16),
              child: const FeaturedCustomListViewItem(),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              'A Million To One',
              style: Styels.textStyel30,
            ),
            const SizedBox(
              height: 4,
            ),
            Opacity(
              opacity: .7,
              child: Text(
                'Tony Faggioli',
                style: Styels.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
            const BookAction()
          ],
        ),
      ),
    );
  }
}
