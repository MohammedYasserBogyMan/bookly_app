import 'package:bookl_app/Features/home/presention/view/widgets/bool_rating.dart';
import 'package:bookl_app/core/utils/assets.dart';
import 'package:bookl_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 140,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    AssetsData.imageTest,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styels.textStyel20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Text('J.K. Rowling', style: Styels.textStyel14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('200\$', style: Styels.textStyel20),
                  BookRating(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
