import 'package:bookl_app/Features/home/presentation/view/widgets/similar_book_list_view.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class SimilaerBookSection extends StatelessWidget {
  const SimilaerBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          'You can also like',
          style: Styels.textStyel16,
        ),
        const SizedBox(
          height: 14,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * .3,
          child: const SimilarBooksListView(),
        ),
      ],
    );
  }
}
