import 'package:bookl_app/Features/home/presention/view/widgets/book_action.dart';
import 'package:bookl_app/Features/home/presention/view/widgets/book_details_section.dart';
import 'package:bookl_app/Features/home/presention/view/widgets/similaer_book_section.dart';
import 'package:flutter/material.dart';

import 'custom_appbar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  CustomAppBarBookDetails(),
                  BookDetailsSection(),
                  SizedBox(
                    height: 37,
                  ),
                  BookAction(),
                  SimilaerBookSection(),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
