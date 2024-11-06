import 'package:bookl_app/Features/home/presentation/view/widgets/bool_rating.dart';
import 'package:bookl_app/Features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
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
        )
      ],
    );
  }
}
