import 'package:flutter/material.dart';

import 'custom_appbar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            CustomAppBarBookDetails(),
          ],
        ),
      ),
    );
  }
}
