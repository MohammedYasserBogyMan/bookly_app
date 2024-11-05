import 'package:bookl_app/Features/home/presention/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
